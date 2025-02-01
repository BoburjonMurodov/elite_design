import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchWidget extends StatefulWidget {
  SearchWidget({super.key, required this.controller, required this.title, required this.onValueChange});

  TextEditingController controller;
  String title;
  final Function(String) onValueChange;

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      child: SizedBox(
        height: 50,
        child: TextField(
          controller: widget.controller,
          autocorrect: false,
          onChanged: (value) {
            widget.onValueChange(value);
          },
          decoration: InputDecoration(
              fillColor: Colors.white,
              contentPadding: EdgeInsets.only(left: 12),
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey)),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
              ),
              hintText: widget.title,
              hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
              prefixIcon: Icon(Icons.search),
              suffixIcon: IconButton(
                  onPressed: () {
                    widget.controller.clear();
                  },
                  icon: Icon(
                    Icons.clear,
                  ))),
        ),
      ),
    );
  }
}
