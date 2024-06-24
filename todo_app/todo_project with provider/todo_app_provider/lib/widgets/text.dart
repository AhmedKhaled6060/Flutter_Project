import 'package:flutter/material.dart';
import 'package:todo_app_provider/Colors1/constants.dart';


Widget smallText(String data, {Color? color}) {
  return Text(
    data,
    style: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
  );
}

Container smallspantext(String data) {
  return Container(
    alignment: Alignment.center,
    decoration:
        BoxDecoration(color: secColor, borderRadius: BorderRadius.circular(20)),
    width: 20,
    height: 20,child: smallText(data),
  );
}
