// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:todo_project/wigets/text.dart';

class TaskInfo extends StatelessWidget {
  TaskInfo({super.key ,this.Done=0, this.due=0});
final int? due;
final int Done;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        smallText('Due to :'),
        smallspantext('$due'),
      ],
    );
  }
}
