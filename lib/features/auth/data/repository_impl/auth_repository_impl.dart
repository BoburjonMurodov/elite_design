import 'package:elite_design/features/auth/data/model/sign_in_request.dart';
import 'package:elite_design/features/auth/data/model/sign_in_response.dart';
import 'package:elite_design/features/auth/data/source/auth_remote_source.dart';

import '../../../../core/local_storage/hive_helper.dart';
import '../../../../core/utils/result.dart';
import '../../domain/repository/auth_repository.dart';

class AuthRepositoryImpl extends AuthRepository {
  HiveHelper _hiveHelper = HiveHelper();
  AuthRemoteSource _remoteSource = AuthRemoteSourceImpl();

  @override
  Future<Result<SignInResponse>> signIn(SignInRequest request) async {
    final result = await _remoteSource.signIn(request);
    if (result.isFailure) {
      return Result.fromFailure(result.failureValue ?? Exception("Error"));
    }

    if (result.successValue!.error) {
      return Result.fromFailure(Exception(result.successValue?.message ?? "null message"));
    } else {
      _hiveHelper.saveLoginInfo(result.successValue!);
      return Result.fromSuccess(result.successValue!);
    }
  }
}
