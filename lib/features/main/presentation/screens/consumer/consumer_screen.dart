import 'package:elite_design/core/routes/route_manager.dart';
import 'package:elite_design/features/main/presentation/bloc/consumer/consumer_screen_bloc.dart';
import 'package:elite_design/features/main/presentation/screens/consumer/visit_type.dart';
import 'package:elite_design/features/main/presentation/screens/order_confirmed/order_confirmed_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/model/request/order/order_request.dart';
import '../home/widgets/search_wigdet.dart';

class ConsumerScreen extends StatelessWidget {
  ConsumerScreen({super.key, required this.visitType, this.list});

  VisitType visitType;
  List<ProductRequest>? list;

  TextEditingController _search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          ConsumerScreenBloc()..add(ConsumerScreenInitial(products: list)),
      child: BlocConsumer<ConsumerScreenBloc, ConsumerScreenState>(
        listener: (context, state) {
          if (state.status == ConsumerStatus.BOTTOMSHEET) {
            _openBottomSheet(context, state);
          }

          if (state.status == ConsumerStatus.ERROR) {
            showErrorDialog(context, state.error ?? 'Error');
          }

          if(state.status == ConsumerStatus.SUCCESS){
            Navigator.pushReplacementNamed(context, RouteManager.orderConfirmedScreen);
          }
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
                backgroundColor: Color(0xFF262a33),
                title: Text(
                  "Mijozlar ro'yhati",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.white,
                  ),
                )),
            bottomNavigationBar: visitType == VisitType.ORDER
                ? SafeArea(
                    child: Wrap(
                      children: [
                        Divider(),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24),
                          child: GestureDetector(
                            onTap: () {
                              context
                                  .read<ConsumerScreenBloc>()
                                  .add(OnClickOpenBottomSheet(clientID: ''));
                            },
                            child: Container(
                                height: 56,
                                decoration: BoxDecoration(
                                    color: Color(0xff2b2d3a),
                                    borderRadius: BorderRadius.circular(12)),
                                child: Center(
                                  child: Text(
                                    'Mijozsiz buyurma berish',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  ),
                                )),
                          ),
                        )
                      ],
                    ),
                  )
                : SizedBox(),
            body: state.status == ConsumerStatus.LOADING
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : Column(
                    children: [
                      SearchWidget(
                        controller: _search,
                        title: "Mijozlarni qidirish..",
                        onValueChange: (value) {
                          context
                              .read<ConsumerScreenBloc>()
                              .add(FilterConsumerScreen(value));
                        },
                        onClear: () {
                          context
                              .read<ConsumerScreenBloc>()
                              .add(FilterConsumerScreen(''));
                        },
                      ),
                      Expanded(
                        child: ListView.separated(
                          padding: EdgeInsets.symmetric(
                              horizontal: 24, vertical: 12),
                          itemBuilder: (context, index) {
                            if (state.extended[index]) {
                              return InkWell(
                                onTap: () {
                                  if (visitType == VisitType.ORDER) {
                                    context.read<ConsumerScreenBloc>().add(
                                        OnClickOpenBottomSheet(
                                            clientID: state
                                                .clients[index].clientId
                                                .toString()));
                                  }
                                },
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    _consumerItem(state, index),
                                    Text("so'm: ${state.clients[index].sum}"),
                                    Text(
                                        "dollar: ${state.clients[index].dollar}")
                                  ],
                                ),
                              );
                            } else {
                              return InkWell(
                                onTap: () {
                                  if (visitType == VisitType.ORDER) {
                                    context.read<ConsumerScreenBloc>().add(
                                        OnClickOpenBottomSheet(
                                            clientID: state
                                                .clients[index].clientId
                                                .toString()));
                                  }
                                },
                                onLongPress: () {
                                  context
                                      .read<ConsumerScreenBloc>()
                                      .add(OnLongClickConsumer(index));
                                },
                                child: _consumerItem(state, index),
                              );
                            }
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return Divider();
                          },
                          itemCount: state.clients.length,
                        ),
                      ),
                    ],
                  ),
          );
        },
      ),
    );
  }

  void _openBottomSheet(BuildContext context, ConsumerScreenState state) {
    TextEditingController controller = TextEditingController(
      text: "TEST DASTURCHI, BEKOR QILISHINGIZ MUMKIN!",
    );

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      isDismissible: true, // ✅ Always allow dismiss, but handle it manually
      builder: (bottomSheetContext) {
        return BlocProvider.value(
          value: context.read<ConsumerScreenBloc>(),
          child: BlocBuilder<ConsumerScreenBloc, ConsumerScreenState>(
            builder: (context, state) {
              return PopScope(
                canPop : state.status != ConsumerStatus.LOADING_ORDER,
                child: SingleChildScrollView(
                  child: SafeArea(
                    child: Padding(
                      padding: EdgeInsets.all(24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Buyurtma berish',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(height: 24),
                          Text(
                            'Izoh',
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(height: 12),
                          SizedBox(
                            height: 150,
                            child: TextField(
                              expands: true,
                              maxLines: null,
                              minLines: null,
                              textAlign: TextAlign.left,
                              textAlignVertical: TextAlignVertical.top,
                              controller: controller,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(16),
                                isDense: true,
                                border: OutlineInputBorder(),
                                hintText: "Izoh",
                              ),
                            ),
                          ),
                          SizedBox(height: 24),
                          GestureDetector(
                            onTap: () {
                              context.read<ConsumerScreenBloc>().add(
                                OnClickConfirmOrder(comment: controller.text),
                              );
                            },
                            child: Container(
                              height: 56,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: state.status == ConsumerStatus.LOADING_ORDER
                                  ? Center(child: CircularProgressIndicator())
                                  : Center(
                                child: Text(
                                  'Buyurtma berish',
                                  style: TextStyle(color: Colors.white, fontSize: 16),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }


  Widget _consumerItem(state, index) {
    return Row(children: [
      SizedBox(
        width: 30,
        height: 30,
        child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset("assets/images/avatar.png")),
      ),
      SizedBox(width: 12),
      Text(state.clients[index].client)
    ]);
  }
}

void showErrorDialog(BuildContext context, String text) {
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Row(children: [
            Icon(
              Icons.error,
              color: Colors.red,
            ),
            SizedBox(width: 12),
            Expanded(child: Text(text))
          ]),
        );
      });
}

