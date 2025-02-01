import 'package:flutter/material.dart';

import '../home/widgets/search_wigdet.dart';

class ConsumerScreen extends StatelessWidget {
  const ConsumerScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
      body: Column(
        children: [
          SearchWidget(
            controller: SearchController(),
            title: "Mijozlarni qidirish..",
            onValueChange: (value) {},
          ),
          Expanded(
            child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              itemBuilder: (context, index) {
                return Row(children: [
                  SizedBox(
                    width: 30,
                    height: 30,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset("assets/images/avatar.png")),
                  ),
                  SizedBox(width: 12),
                  Text("Mijoz $index")
                ]);
              },
              separatorBuilder: (BuildContext context, int index) {
                return Divider();
              },
              itemCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}
