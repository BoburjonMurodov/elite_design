import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_response.freezed.dart';
part 'sign_in_response.g.dart';

@freezed
class SignInResponse with _$SignInResponse {
  const factory SignInResponse({
    required bool error,
    required String message,
    required SignInData data,
  }) = _SignInResponse;

  factory SignInResponse.fromJson(Map<String, dynamic> json) =>
      _$SignInResponseFromJson(json);
}

@freezed
class SignInData with _$SignInData {
  const factory SignInData({
    required String login,
    required String password,
    required String sklad,
    required String skladId,
    required bool registrirovan,
    String? adress,
    String? phone,
    String? email,
    String? name,
    required String token,
  }) = _SignInData;

  factory SignInData.fromJson(Map<String, dynamic> json) =>
      _$SignInDataFromJson(json);
}

