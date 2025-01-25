import 'package:bloc/bloc.dart';

part 'login_screen_event.dart';
part 'login_screen_state.dart';

class LoginScreenBloc extends Bloc<LoginScreenEvent, LoginScreenState> {
  LoginScreenBloc()
      : super(
            LoginScreenState("", showPassword: false, status: Status.INITIAL)) {
    on<LoginScreenEvent>((event, emit) {});

    on<OnClickLoginButton>((event, emit) async {
      if (event.login.isEmpty || event.password.isEmpty) {
        emit(
          state.copyWith(
              error: "Kerakli maydonlar to'ldirilishi kerak",
              status: Status.ERROR),
        );
      } else if (event.login == "admin" && event.password == "admin") {
        emit(state.copyWith(error: "", status: Status.LOADING));
        await Future.delayed(Duration(seconds: 1), () {
          emit(
            state.copyWith(error: "", status: Status.SUCCESS),
          );
        });
      } else {
        emit(state.copyWith(
            error: "Login yoki parol noto'g'ri", status: Status.ERROR));
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
