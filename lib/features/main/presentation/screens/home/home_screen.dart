import 'package:elite_design/features/main/presentation/bloc/home/home_screen_bloc.dart';
import 'package:elite_design/features/main/presentation/bloc/main/main_screen_bloc.dart';
import 'package:elite_design/features/main/presentation/screens/home/widgets/category_item.dart';
import 'package:elite_design/features/main/presentation/screens/home/widgets/search_wigdet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final TextEditingController _search = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MainScreenBloc, MainScreenState>(
      listener: (context, state) {
        if (state.status == MainScreenStatus.LOADING) {
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("Ma'lumotlar yuklanyapti"))
          );
        }
        if (state.status == MainScreenStatus.SUCCESS) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("Ma'lumotlar yangilandi"))
          );
        }
        if (state.status == MainScreenStatus.ERROR) {
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
                    context.read<MainScreenBloc>().add(OnFilterCategories(value));
                  },
                onClear: (){
                  context.read<MainScreenBloc>().add(OnFilterCategories(''));
                },

                  ),
              Expanded(
                child: RefreshIndicator(
                  onRefresh: () async {
                    context.read<MainScreenBloc>().add(UpdateProductsAndCategories());
                    await Future.delayed(Duration(microseconds: 1500));
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
    );
  }
}
