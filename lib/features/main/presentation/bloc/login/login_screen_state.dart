part of 'login_screen_bloc.dart';

class LoginScreenState {
  String error = "";
  bool showPassword;
  Status status;

  LoginScreenState(this.error, {required this.showPassword, required this.status});

  LoginScreenState copyWith(
      {String? error, bool? showPassword, required Status status}) {
    return LoginScreenState(
      error ?? this.error,
      showPassword: showPassword ?? this.showPassword,
      status: status,
    );
  }
}

enum Status { INITIAL, LOADING, SUCCESS, ERROR }
