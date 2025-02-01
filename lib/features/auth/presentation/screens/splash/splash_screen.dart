import 'package:elite_design/features/auth/presentation/bloc/splash/splash_screen_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/routes/route_manager.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {

  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _scaleAnimation = Tween<double>(begin: 0.3, end: 1).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
      SplashScreenBloc()
        ..add(Init()),
      child: BlocConsumer<SplashScreenBloc, SplashScreenState>(
        listener: (context, state) {
          if (state.state == SplashScreenStatus.HOME) {
            Navigator.pushReplacementNamed(context, RouteManager.mainScreen);
          }

          if (state.state == SplashScreenStatus.LOGIN) {
            Navigator.pushReplacementNamed(context, RouteManager.loginScreen);
          }

        },
        builder: (context, state) {
          return Scaffold(
            body: Container(
              color: const Color(0xff1a1a16),
              width: double.infinity,
              height: double.infinity,
              child: SafeArea(
                child: Stack(
                  children: [
                    Align(
                      child: AnimatedBuilder(
                        animation: _scaleAnimation,
                        builder: (context, child) {
                          return Transform.scale(
                            scale: _scaleAnimation.value,
                            child: Image.asset(
                                "assets/images/splash_image.webp"),
                          );
                        },
                      ),
                    ),

                    const Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 20),
                        child: CircularProgressIndicator(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}