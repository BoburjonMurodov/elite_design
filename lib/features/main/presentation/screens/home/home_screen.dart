import 'package:elite_design/features/main/presentation/bloc/home/home_screen_bloc.dart';
import 'package:elite_design/features/main/presentation/screens/home/widgets/category_item.dart';
import 'package:elite_design/features/main/presentation/screens/home/widgets/search_wigdet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final TextEditingController _search = TextEditingController();
  final bloc = HomeScreenBloc()..add(HomeScreenInitial());


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => bloc,
      child: BlocConsumer<HomeScreenBloc, HomeScreenState>(
        listener: (context, state) {
          if (state.status == HomeScreenStatus.LOADING) {
            ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Ma'lumotlar yuklanyapti"))
            );
          }
          if (state.status == HomeScreenStatus.PRODUCTS) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("Ma'lumotlar yangilandi"))
            );
          }
          if (state.status == HomeScreenStatus.ERROR) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.error ?? 'null'))
            );
          }
        },
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Color(0xFFf4f6fa),
            body: Column(
              children: [
                SearchWidget(
                    controller: _search,
                    title: "Kategoriyadan qidirish",
                    onValueChange: (value) {
                      bloc.add(FilterCategories(query: value));
                    }),
                Expanded(
                  child: RefreshIndicator(
                    onRefresh: () async {
                      Future.delayed(Duration(microseconds: 1500));
                    },
                    child: GridView.builder(
                        itemCount: state.categories.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3, childAspectRatio: 0.8),
                        itemBuilder: (context, index) {
                          return CategoryItemWidget( item: state.categories[index]);
                        }),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
