import 'package:elite_design/features/main/presentation/screens/barcode/bar_code_screen.dart';
import 'package:elite_design/features/main/presentation/screens/bottomsheet/app_bottom_sheet.dart';
import 'package:elite_design/features/main/presentation/screens/consumer/consumer_screen.dart';
import 'package:elite_design/features/main/presentation/screens/main/main_screen.dart';
import 'package:elite_design/features/main/presentation/screens/product/product_screen.dart';
import 'package:flutter/cupertino.dart';

import '../../features/auth/presentation/screens/login/login_screen.dart';
import '../../features/auth/presentation/screens/splash/splash_screen.dart';

class RouteManager {
  static const String splashScreen = "/splash";
  static const String loginScreen = "/login";
  static const String mainScreen = "/main";
  static const String productScreen = "/product";
  static const String barCodeScreen = "/barcode";
  static const String consumerScreen = "/consumer";

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
        var argument = settings.arguments as Map<String, String?>;
        return CupertinoPageRoute<bool?>(
          builder: (_) => ProductScreen(
              title: argument['title'] ?? 'null',
              categoryId: argument['id']),
        );

      case barCodeScreen:
        return CupertinoPageRoute<bool?>(
          builder: (_) => BarCodeScreen(),
        );

      case consumerScreen:
        return CupertinoPageRoute<bool?>(
          builder: (_) => ConsumerScreen(),
        );


    }
  }
}
