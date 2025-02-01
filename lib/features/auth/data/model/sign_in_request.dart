


class SignInRequest{
  final String login;
  final String password;

  SignInRequest({required this.login, required this.password});

  toJson() {
    return {
      "login": login,
      "password": password
    };
  }
}

