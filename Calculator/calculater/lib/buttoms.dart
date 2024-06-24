import 'package:flutter/material.dart';

class Buttoms extends StatelessWidget {
  Buttoms({Key? key}) : super(key: key);
  List<String> nums = [
    '7',
    '8',
    '9',
    '+',
    '4',
    '5',
    '6',
    '1',
    '2',
    '3',
    '0',
    '.',
    'clr'
  ];
  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: () {}, child: Text('$nums[index]'));
  }
}
