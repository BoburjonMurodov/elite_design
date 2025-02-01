part of 'login_screen_bloc.dart';



sealed class LoginScreenEvent {}


class OnClickLoginButton extends LoginScreenEvent {
  final String login;
  final String password;
  OnClickLoginButton(this.login, this.password);
}

class OnClickShowHidePassword extends LoginScreenEvent {}
class OnDismissDialog extends LoginScreenEvent{}
