import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EmptyStateWidget extends StatelessWidget {
   EmptyStateWidget({super.key,
    required this.imageLink,
    required this.title
  });

  String imageLink;
  String title;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
              width: 200,
              height: 200,
              child: Image.asset(imageLink)),
          Text(
            title,
            style: TextStyle(color: Colors.grey),
          )
        ],
      ),
    );
  }
}
