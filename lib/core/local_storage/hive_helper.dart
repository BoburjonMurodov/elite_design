import 'dart:core';

import 'package:elite_design/features/auth/data/model/sign_in_response.dart';
import 'package:hive/hive.dart';

class HiveHelper {
  static late Box<String> _loginBox;

  static init() async {
    _loginBox = await Hive.openBox<String>('login');
  }

  Future<void> saveLoginInfo(SignInResponse response) async {
    await _loginBox.put('token', response.data.token);
    await _loginBox.put('skladId', response.data.skladId);
    await _loginBox.put('sklad', response.data.sklad);
    await _loginBox.put('login', response.data.login);
    await _loginBox.put('password', response.data.password);
  }

  Future<void> signOut() async {
    await _loginBox.clear();
  }

  Future<bool> isSignedIn() async {
    return _loginBox.get('token', defaultValue: null) != null;
  }

  Future<String?> getToken() async {
    return _loginBox.get('token', defaultValue: null);
  }

  Future<String?> getSkladId() async {
    return _loginBox.get('skladId', defaultValue: null);
  }

  Future<String?> getSklad() async {
    return _loginBox.get('sklad', defaultValue: null);
  }

  Future<String?> getLogin() async {
    return _loginBox.get('login', defaultValue: null);
  }

  Future<void> setVazvrat(bool value) async {
    final box = await Hive.openBox<bool>('vazvrat');
    await box.put('vazvrat', value);
  }

  Future<bool> getVazvrat() async {
    final box = await Hive.openBox<bool>('vazvrat');
    return box.get('vazvrat', defaultValue: false) ?? false;
  }
}
