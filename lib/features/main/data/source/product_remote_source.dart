import 'dart:developer';

import 'package:dio/dio.dart';

import '../../../../core/local_storage/hive_helper.dart';
import '../../../../core/utils/result.dart';
import '../model/data/category_item/category_item.dart';
import '../model/response/category/category_response.dart';
import '../model/response/product/product_list_response.dart';

abstract class ProductRemoteSource {
  Future<Result<List<CategoryItem>>> getCategories();

  Future<Result<List<ProductItem>>> getProducts();
}

class ProductRemoteSourceImpl extends ProductRemoteSource {
  late Dio _dio;

  ProductRemoteSourceImpl() {
    _dio = Dio(BaseOptions(baseUrl: "http://82.148.6.141:60302/", headers: {
      'Authorization': 'Basic bW9iaWxlczoxMjM=',
    }));
  }

  final _hiveHelper = HiveHelper();

  @override
  Future<Result<List<CategoryItem>>> getCategories() async {
    try {
      final token = await _hiveHelper.getToken();
      final result = await _dio.get('Rahmatullo/hs/Rahmatullo/TovarKategoriya',
          queryParameters: {'token': token});

      if (result.statusCode == 200 && result.data != null) {
        var data = CategoryResponse.fromJson(result.data);

        if (data.error) {
          return Result.fromFailure(Exception(data.message));
        } else {
          return Result.fromSuccess(data.data);
        }
      } else {
        return Result.fromFailure(
            Exception(result.statusMessage ?? "Unknown error"));
      }
    } on DioException catch (e) {
      return Result.fromFailure(Exception(e.message ?? "Unknown error"));
    }
  }

  @override
  Future<Result<List<ProductItem>>> getProducts() async {
    try {
      final id = await _hiveHelper.getSkladId();
      final result =
          await _dio.get('Rahmatullo/hs/Rahmatullo/TovarList?skladId=$id');
      if (result.statusCode == 200 && result.data != null) {
        final data = ProductListResponse.fromJson(result.data);
        if (data.error) {
          return Result.fromFailure(Exception(data.message));
        } else {
          return Result.fromSuccess(data.data);
        }
      } else {
        return Result.fromFailure(
            Exception(result.statusMessage ?? "Unknown error!"));
      }
    } on DioException catch (e) {
      log('Exception: ' + e.toString());
      return Result.fromFailure(Exception(e.message ?? "Unknown error"));
    }
  }
}
