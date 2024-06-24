import 'package:commercial_appl/Widgets/Navigationdrawer.dart';
import 'package:flutter/material.dart';

class Product1 extends StatelessWidget {
  Product1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Product'),
        backgroundColor: Colors.blue,
      ),
      drawer: navbar(),
    );
  }
}
