import 'package:elite_design/features/main/presentation/screens/barcode/bar_code_screen.dart';
import 'package:elite_design/features/main/presentation/screens/login/login_screen.dart';
import 'package:elite_design/features/main/presentation/screens/main/main_screen.dart';
import 'package:elite_design/features/main/presentation/screens/product/product_screen.dart';
import 'package:elite_design/features/main/presentation/screens/splash/splash_screen.dart';
import 'package:flutter/cupertino.dart';

class RouteManager {
  static const String splashScreen = "/splash";
  static const String loginScreen = "/login";
  static const String mainScreen = "/main";
  static const String productScreen = "/product";
  static const String barCodeScreen = "/barcode";

  static Route<bool?>? generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case splashScreen:
        return CupertinoPageRoute<bool?>(
          builder: (_) => const SplashScreen(),
        );

      case loginScreen:
        return CupertinoPageRoute<bool?>(
          builder: (_) => const LoginScreen(),
        );

      case mainScreen:
        return CupertinoPageRoute<bool?>(
          builder: (_) => const MainScreen(),
        );

      case productScreen:
        var argument = settings.arguments as String;
        return CupertinoPageRoute<bool?>(
          builder: (_) =>  ProductScreen(title: argument),
        );

      case barCodeScreen:
        return CupertinoPageRoute<bool?>(
          builder: (_) =>  BarCodeScreen(),
        );

    }
  }
}
