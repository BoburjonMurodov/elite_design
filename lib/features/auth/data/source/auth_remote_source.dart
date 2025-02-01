import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:elite_design/features/auth/data/model/sign_in_response.dart';

import '../../../../core/utils/result.dart';
import '../model/sign_in_request.dart';

abstract class AuthRemoteSource {
  Future<Result<SignInResponse>> signIn(SignInRequest request);
}

class AuthRemoteSourceImpl implements AuthRemoteSource {
  static const String _BASE_URL = "http://82.148.6.141:60302/";

  final _dio = Dio(BaseOptions(baseUrl: AuthRemoteSourceImpl._BASE_URL, headers: {
    'Authorization': 'Basic bW9iaWxlczoxMjM=',
  }));

  @override
  Future<Result<SignInResponse>> signIn(SignInRequest request) async {
    try {
      final result = await _dio.post(
        "Rahmatullo/hs/Rahmatullo/AuthToken",
        data: request.toJson(),
      );

      if (result.statusCode == 200) {
        log(result.data.toString());
        return Result.fromSuccess(SignInResponse.fromJson(result.data));
      } else {
        return Result.fromFailure(Exception(result.statusMessage ?? "Unknown error"));
      }
    } on DioException catch (e) {
      return Result.fromFailure(Exception(e.message ?? "Unknown error"));
    }
  }



}
