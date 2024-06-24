import 'package:commercial_appl/Widgets/Navigationdrawer.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
        backgroundColor: Colors.blue,
      ),
      drawer: navbar(),
      // Your code here
    );
  }
}
