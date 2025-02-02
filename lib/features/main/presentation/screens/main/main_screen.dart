import 'dart:io';

import 'package:elite_design/features/main/presentation/bloc/main/main_screen_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/zondicons.dart';

import '../../../../../core/local_storage/hive_helper.dart';
import '../../../../../core/routes/route_manager.dart';
import '../cart/cart_screen.dart';
import '../consumer/visit_type.dart';
import '../home/home_screen.dart';
import '../saved/saved_screen.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  final AdvancedDrawerController _advancedDrawerController =
  AdvancedDrawerController();
  var home = HomeScreen();
  var saved = SavedScreen();
  var cart = CartScreen();

  @override
  Widget build(BuildContext context) {
    var navigationBarHeight = MediaQuery
        .of(context)
        .padding
        .bottom;

    context.read<MainScreenBloc>().add(GetFavouriteItems());
    context.read<MainScreenBloc>().add(GetCartItems());

    if (!Platform.isIOS) {
      navigationBarHeight += 12;
    }

    return BlocBuilder<MainScreenBloc, MainScreenState>(
      builder: (context, state) {
        var list = [
          GButton(icon: Icons.home, text: "Asosiy"),
          GButton(icon: Icons.favorite, text: "Saqlanganlar"),
          GButton(
            icon: Icons.shopping_cart,
            text: "Savat",
            leading: state.cartItems.isNotEmpty
                ? Badge(
              label: Text(state.cartItems.length.toString()),
              child: Icon(Icons.shopping_cart),
            )
                : Icon(Icons.shopping_cart),
          ),
        ];

        return AdvancedDrawer(
          controller: _advancedDrawerController,
          childDecoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(16)),
          ),
          backdropColor: const Color(0xff1a1a16),
          drawer: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                children: [
                  SizedBox(
                      height: 150,
                      width: 150,
                      child: Image.asset("assets/images/splash_image.webp")),
                  SizedBox(height: 24),
                  Text(
                    state.loginName,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  SizedBox(height: 24),
                  ListTile(
                    leading: Icon(Icons.people, color: Colors.white),
                    title:
                    Text("Mijozlar", style: TextStyle(color: Colors.white)),
                    onTap: () {
                      Navigator.pushNamed(context, RouteManager.consumerScreen,
                          arguments: {'visitType': VisitType.REGULAR});
                    },
                  ),
                  ListTile(
                    onTap: () {
                      _showBottomSheet(context);
                    },
                    leading: Icon(Icons.shopping_basket, color: Colors.white),
                    title: Text("Savdo jarayoni",
                        style: TextStyle(color: Colors.white)),
                  ),
                  ListTile(
                    leading: Icon(Icons.delete, color: Colors.red),
                    title: Text("Delete Account",
                        style: TextStyle(color: Colors.white)),
                  ),
                  ListTile(
                    leading: Icon(Icons.exit_to_app, color: Colors.white),
                    title: Text("Tizimdan chiqish",
                        style: TextStyle(color: Colors.white)),
                    onTap: () async {
                      await HiveHelper().signOut();
                      Navigator.pushNamedAndRemoveUntil(
                          context, RouteManager.loginScreen, (route) => false);
                    },
                  ),
                  Spacer(),
                  Text(
                    "Murodov Bobur",
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                  Text(
                    "Elite Design v-1.0.9",
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
          child: Scaffold(
            backgroundColor: Colors.amber,
            appBar: AppBar(
              backgroundColor: Color(0xFF262a33),
              leading: IconButton(
                  onPressed: () {
                    _advancedDrawerController.showDrawer();
                  },
                  icon: Icon(Icons.menu,
                    color: Colors.white,
                  )),
              centerTitle: false,
              title: Text(
                "Elite Design",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              actions: [
                IconButton(
                    onPressed: () {
                      context
                          .read<MainScreenBloc>()
                          .add(UpdateProductsAndCategories());
                    },
                    color: Colors.white,
                    icon: Iconify(
                      size: 18,
                      Zondicons.reload,
                      color: Colors.white,
                    )),
                IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, RouteManager.barCodeScreen);
                    },
                    color: Colors.white,
                    icon: Icon(Icons.qr_code_scanner)),
                IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, RouteManager.productScreen,
                          arguments: {
                            'title': 'Barcha tovarlar',
                            'id': null,
                          });
                    },
                    color: Colors.white,
                    icon: Icon(Icons.search)),
              ],
            ),
            bottomNavigationBar: Container(
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    color: Colors.grey.withValues(alpha: .5),
                    spreadRadius: 10,
                    blurRadius: 7,
                    offset: Offset(0, 3))
              ]),
              padding: EdgeInsets.only(
                  bottom: navigationBarHeight, right: 12, left: 12, top: 12),
              child: GNav(
                rippleColor: Colors.black.withValues(alpha: .2),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                gap: 8,
                tabBorderRadius: 50,
                duration: Duration(milliseconds: 300),
                iconSize: 24,
                haptic: true,
                backgroundColor: Colors.white,
                tabs: list,
                selectedIndex: state.currentTab,
                tabBackgroundColor: Colors.black.withValues(alpha: .2),
                onTabChange: (index) {
                  context.read<MainScreenBloc>().add(OnChangeTab(index));
                },
                // padding: EdgeInsets.only(bottom:  navigationBarHeight, top: 24, left: 48, right: 48),
              ),
            ),
            body: Center(
              child: switch (state.currentTab) {
                0 => home,
                1 => saved,
                2 => cart,
                int() => throw UnimplementedError(),
              },
            ),
          ),
        );
      },
    );
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return BlocBuilder<MainScreenBloc, MainScreenState>(
            builder: (context, state) {
              return SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      children: [
                        RadioMenuButton(
                            value: true,
                            groupValue: state.isVazvrat,
                            onChanged: (value) {
                              context.read<MainScreenBloc>().add(OnChangeVozvrat(value!));
                            },
                            child: Text('Savdo')),

                        RadioMenuButton(
                            value: false,
                            groupValue: state.isVazvrat,
                            onChanged: (value) {
                              context.read<MainScreenBloc>().add(OnChangeVozvrat(value!));
                            },
                            child: Text('Vazvrat')),
                      ],
                    ),
                  ));
            },
          );
        });
  }
}
