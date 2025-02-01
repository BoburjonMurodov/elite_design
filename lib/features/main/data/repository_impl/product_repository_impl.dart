import 'dart:developer';
import 'dart:ui';

import 'package:elite_design/features/main/data/model/data/category_item/category_item.dart';
import 'package:elite_design/features/main/data/model/response/product/product_list_response.dart';
import 'package:elite_design/features/main/data/source/product_remote_source.dart';

import '../../../../core/local_storage/database_helper.dart';
import '../../../../core/utils/result.dart';
import '../../domain/repository/product_repository.dart';
import '../model/data/product_data/product_data.dart';

class ProductRepositoryImpl extends ProductRepository {
  final _remoteSource = ProductRemoteSourceImpl();
  final _databaseHelper = DatabaseHelper.instance;

  @override
  Future<Result<List<CategoryItem>>> getCategories() async {
    final result = await _remoteSource.getCategories();

    if (result.isSuccess) {
      return result;
    } else {
      return result;
    }
  }

  @override
  Future<Result<List<ProductItem>>> getProductsFromRemote() async {
    log('getting products from net');
    final result = await _remoteSource.getProducts();
    if (result.isSuccess) {
      log('loaded products successfully');
      await _databaseHelper.saveProducts(result.successValue!);
      return result;
    } else {
      return result;
    }
  }

  @override
  Future<List<ProductData>> getProductsByCategory(String id) async {
    return await _databaseHelper.getProductsByCategory(id);
  }

  @override
  Future<List<ProductData>> getAllProducts() async {
    log('getAllProducts');
    return await _databaseHelper.getAllProducts();
  }

  @override
  Future<ProductData> updateFavouriteStatus(String id) async{
    return await _databaseHelper.updateFavouriteStatus(id);
  }

  @override
  Future<List<ProductData>> getFavouriteProducts() async {
    return await _databaseHelper.getFavouriteProducts();
  }

  @override
  Future<void> addProductToCart(String id,int count, String payment)  async {
    await _databaseHelper.updateProductCount(id, count, payment);
  }
}
