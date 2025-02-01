import 'package:elite_design/features/main/data/model/data/category_item/category_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryItemWidget extends StatelessWidget {
  CategoryItemWidget({super.key, required this.item});

  CategoryItem item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () {
          Navigator.pushNamed(context, "/product", arguments: {
            'title': item.category,
            'id': item.categoryId
          });
        },
        child: SizedBox(
          height: 200,
          child: Column(
            children: [
              SizedBox(
                height: 100,
                child: Container(
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                      borderRadius:
                      BorderRadius.circular(8),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey
                                .withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3))
                      ]
                  ),
                  child: ClipRRect(
                    borderRadius:
                    BorderRadius.circular(8),
                    child: Image.asset(
                      "assets/images/image_placeholder.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 12),
              Expanded(
                  child: Text(
                    item.category,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                  )
              )
            ],
          ),
        ),
      ),
    );

  }
}
