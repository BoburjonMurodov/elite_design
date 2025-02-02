import 'package:elite_design/core/routes/route_manager.dart';
import 'package:elite_design/core/utils/extension.dart';
import 'package:elite_design/features/main/presentation/bloc/main/main_screen_bloc.dart';
import 'package:elite_design/features/main/presentation/screens/cart/widget/cart_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/model/request/order/order_request.dart';
import '../../bloc/cart/cart_screen_bloc.dart';
import '../consumer/visit_type.dart';

class CartScreen extends StatelessWidget {
  CartScreen({super.key});

  var emptyState = false;


  @override
  Widget build(BuildContext context) {
    context.read<MainScreenBloc>().add(MainScreenBlocInitial());

    return BlocProvider(
      create: (context) => CartScreenBloc()..add(CartScreenInitial()),
      child: BlocConsumer<CartScreenBloc, CartScreenState>(
        listener: (context, state) {

          if (CartState.ERROR == state.status) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                  content: Text(
                state.error ?? "Xatolik!!!",
                style: TextStyle(color: Colors.red),
              )),
            );
          }

          if (CartState.SUCCESS == state.status) {
            Navigator.pushNamed(context, RouteManager.consumerScreen,
                arguments: {
                  'visitType': VisitType.ORDER,
                  'list': state.products
                      .map((e) => ProductRequest(
                            tovar: e.tovar,
                            pid: e.tovarId,
                            count: e.count,
                            price: e.sena,
                            summa: e.optomNarx,
                          ))
                      .toList()
                });
          }

        },

        builder: (context, state) {
          return Scaffold(
              backgroundColor: Color(0xFFf5f6fa),
              bottomNavigationBar: state.products.isNotEmpty
                  ? Wrap(
                      children: [
                        Divider(),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 24, right: 24, bottom: 12),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Umumiy summa: ',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    state.totalPrice.formatMoney(),
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              GestureDetector(
                                onTap: () {
                                  context
                                      .read<CartScreenBloc>()
                                      .add(OnClickOrderButton());
                                },
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                      color: Color(0xFF262a33),
                                      borderRadius: BorderRadius.circular(12)),
                                  child: Center(
                                    child: state.status != CartState.LOADING
                                        ? Text(
                                            'Buyurtma berish',
                                            style:
                                                TextStyle(color: Colors.white),
                                          )
                                        : CircularProgressIndicator(),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  : SizedBox(),
              body: state.products.isEmpty
                  ? Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                              width: 200,
                              height: 200,
                              child:
                                  Image.asset("assets/images/empty_cart.png")),
                          Text(
                            "Saqlangalar hozircha mavjud emas!",
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                    )
                  : Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child: Row(
                            children: [
                              Text('debug'),
                              Spacer(),
                              Switch(
                                  value: state.debug,
                                  onChanged: (value) {
                                    context
                                        .read<CartScreenBloc>()
                                        .add(OnSwitchValueChange(value));
                                  }),
                            ],
                          ),
                        ),
                        Expanded(
                          child: ListView.separated(
                            itemCount: state.products.length,
                            padding: EdgeInsets.symmetric(
                                horizontal: 24, vertical: 12),
                            itemBuilder: (BuildContext context, int index) {
                              return CartItemWidget(
                                item: state.products[index],
                                onClickDelete: () {
                                  context
                                      .read<CartScreenBloc>()
                                      .add(OnClickDelete(index));
                                },
                                onClickMinus: () {
                                  context
                                      .read<CartScreenBloc>()
                                      .add(OnClickMinus(index));
                                },
                                onClickPlus: () {
                                  context
                                      .read<CartScreenBloc>()
                                      .add(OnClickPlus(index));
                                },
                                product: state
                                    .indexes[state.products[index].tovarId],
                              );
                            },
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return Divider();
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
