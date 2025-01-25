import 'package:elite_design/features/main/presentation/screens/saved/widgets/empty_state_widget.dart';
import 'package:elite_design/features/main/presentation/screens/saved/widgets/product_item.dart';
import 'package:flutter/material.dart';

class SavedScreen extends StatelessWidget {
  SavedScreen({super.key});

  var emptyState = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFf5f7fa),
        body: emptyState
            ? EmptyStateWidget(
                imageLink: "assets/images/empty_saved.png",
                title: "Saqlangalar hozircha mavjud emas!")
            : ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                itemCount: 15,
                itemBuilder: (BuildContext context, int index) {
                  return ProductItem();
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(height: 12);
                },
              ));
  }
}
