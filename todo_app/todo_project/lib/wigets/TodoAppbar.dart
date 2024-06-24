// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TodoAppbar extends StatelessWidget {
  TodoAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 40,
        bottom: 80,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          SizedBox(
            width: 20,
          ),
          Text(
            "Todo App",
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
