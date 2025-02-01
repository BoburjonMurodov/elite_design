
import 'package:elite_design/features/auth/data/model/sign_in_request.dart';
import 'package:elite_design/features/auth/data/model/sign_in_response.dart';

import '../../../../core/utils/result.dart';

abstract class AuthRepository{
  Future<Result<SignInResponse>> signIn(SignInRequest request);
}