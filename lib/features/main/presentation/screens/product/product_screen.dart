import 'package:elite_design/features/main/presentation/bloc/main/main_screen_bloc.dart';
import 'package:elite_design/features/main/presentation/bloc/product/product_screen_bloc.dart';
import 'package:elite_design/features/main/presentation/screens/home/widgets/search_wigdet.dart';
import 'package:elite_design/features/main/presentation/screens/saved/widgets/product_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/zondicons.dart';

import '../../../../../core/routes/route_manager.dart';
import '../saved/widgets/empty_state_widget.dart';

class ProductScreen extends StatelessWidget {
  ProductScreen({super.key, required this.title, required this.categoryId});

  String title;
  String? categoryId;
  final TextEditingController _search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductScreenBloc()
        ..add(ProductScreenInitialEvent(category: categoryId)),
      child: BlocConsumer<ProductScreenBloc, ProductScreenState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
              backgroundColor: Color(0xFFf5f7fa),
              appBar: AppBar(
                backgroundColor: Color(0xFF262a33),
                centerTitle: false,
                leading: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white,
                    )),
                title: Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                actions: [
                  IconButton(
                      onPressed: () {},
                      color: Colors.white,
                      icon: Iconify(
                        size: 18,
                        Zondicons.reload,
                        color: Colors.white,
                      )),
                  IconButton(
                      onPressed: () {
                        Navigator.pushNamed(
                            context, RouteManager.barCodeScreen);
                      },
                      color: Colors.white,
                      icon: Icon(Icons.qr_code_scanner)),
                  BlocBuilder<MainScreenBloc, MainScreenState>(
                    builder: (context, state) {
                      return IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                          context.read<MainScreenBloc>().add(OnChangeTab(2));
                        },
                        color: Colors.white,
                        icon: Badge(
                          child: Icon(Icons.shopping_cart),
                          label: Text('${state.cartItems.length}'),
                        ),
                      );
                    },
                  ),
                ],
              ),
              body: Column(
                children: [
                  SearchWidget(
                    controller: _search,
                    title: "Mahsulot qidirish...",
                    onValueChange: (value) {
                      context
                          .read<ProductScreenBloc>()
                          .add(ProductScreenFilterEvent(query: value));
                    },
                    onClear: () {
                      context
                          .read<ProductScreenBloc>()
                          .add(ProductScreenFilterEvent(query: ''));
                    }
                  ),
                  if (state.products.isEmpty)
                    Expanded(
                      child: Stack(
                        children: [
                          EmptyStateWidget(
                            imageLink: "assets/images/empty_product.png",
                            title: "Mahsulotlar topilmadi!",
                          ),
                        ],
                      ),
                    )
                  else
                    Expanded(
                      child: ListView.separated(
                        padding:
                            EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        itemCount: state.products.length,
                        itemBuilder: (context, index) {
                          return ProductItemWidget(
                            item: state.products[index],
                            onClick: (id) {
                              context.read<ProductScreenBloc>().add(
                                  OnClickFavouriteEvent(
                                      id: id, currentIndex: index));
                            },
                            onUpdate: () {
                              context.read<ProductScreenBloc>().add(
                                  ProductScreenInitialEvent(
                                      category: categoryId));
                            },
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(height: 12);
                        },
                      ),
                    ),
                ],
              ));
        },
      ),
    );
  }
}
