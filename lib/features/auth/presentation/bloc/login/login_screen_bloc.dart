import 'dart:developer';

import 'package:elite_design/features/auth/data/model/sign_in_request.dart';
import 'package:elite_design/features/auth/domain/repository/auth_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/repository_impl/auth_repository_impl.dart';

part 'login_screen_event.dart';
part 'login_screen_state.dart';

class LoginScreenBloc extends Bloc<LoginScreenEvent, LoginScreenState> {
  LoginScreenBloc()
      : super(
            LoginScreenState("", showPassword: false, status: Status.INITIAL)) {
    on<LoginScreenEvent>((event, emit) {});
    AuthRepository authRepository = AuthRepositoryImpl();

    on<OnClickLoginButton>((event, emit) async {
      if (event.login.isEmpty || event.password.isEmpty) {
        emit(
          state.copyWith(
              error: "Kerakli maydonlar to'ldirilishi kerak",
              status: Status.ERROR),
        );
        return;
      }

      emit(state.copyWith(status: Status.LOADING));
      final result = await authRepository
          .signIn(SignInRequest(login: event.login, password: event.password));

      if (result.isFailure) {
        emit(state.copyWith(error: result.failureValue.toString().replaceAll("Exception: ", ""), status: Status.ERROR));
      } else if (result.isSuccess) {
        result.onSuccess((user) {
          emit(state.copyWith(status: Status.SUCCESS));
        });
      }
    });

    on<OnClickShowHidePassword>((event, emit) {
      if (state.status == Status.LOADING) {
        emit(state.copyWith(
            showPassword: !state.showPassword, status: Status.LOADING));
      } else {
        emit(state.copyWith(
            showPassword: !state.showPassword, status: Status.INITIAL));
      }
    });
  }
}
