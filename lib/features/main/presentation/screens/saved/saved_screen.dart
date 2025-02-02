import 'package:elite_design/features/main/presentation/screens/saved/widgets/empty_state_widget.dart';
import 'package:elite_design/features/main/presentation/screens/saved/widgets/product_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/main/main_screen_bloc.dart';
import '../../bloc/saved/saved_screen_bloc.dart';

class SavedScreen extends StatelessWidget {
  SavedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SavedScreenBloc()..add(SavedScreenInitial()),
      child: BlocConsumer<SavedScreenBloc, SavedScreenState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
              backgroundColor: Color(0xFFf5f7fa),
              body: state.products.isEmpty
                  ? EmptyStateWidget(
                      imageLink: "assets/images/empty_saved.png",
                      title: "Saqlangalar hozircha mavjud emas!"
              )
                  : ListView.separated(
                      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      itemCount: state.products.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ProductItemWidget(
                          item: state.products[index],
                          onClick: (id) {
                            context.read<MainScreenBloc>().add(GetFavouriteItems());
                            context.read<SavedScreenBloc>().add(OnClickDislike(id: id, currentIndex: index));
                          },
                          onUpdate: () {
                            context.read<SavedScreenBloc>().add(SavedScreenInitial());
                          },
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(height: 12);
                      },
                    )
          );
        },
      ),
    );
  }
}
