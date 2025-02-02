import 'package:elite_design/features/main/data/repository_impl/product_repository_impl.dart';
import 'package:elite_design/features/main/domain/repository/product_repository.dart';
import 'package:elite_design/features/main/presentation/bloc/main/main_screen_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/routes/route_manager.dart';

class OrderConfirmedScreen extends StatelessWidget {
  const OrderConfirmedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ProductRepository repository = ProductRepositoryImpl();

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Buyurtmangiz qabul qilindi',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 24),
              SizedBox(
                  height: 200,
                  width: 200,
                  child: Image.asset('assets/images/order_confirmed.png')),
              SizedBox(height: 24),
              Text(
                'Xizmatlarimizdan foydalanganingiz uchun rahmat',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 24),
              GestureDetector(
                onTap: () async {
                  Navigator.pushReplacementNamed(context, RouteManager.mainScreen);
                  context.read<MainScreenBloc>().add(OnChangeTab(0));
                  context.read<MainScreenBloc>().add(GetCartItems());
                },
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Text(
                      'Asosiy oynaga qaytish',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
