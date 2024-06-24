import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
/*import 'package:commercial_appl/Widgets/homeScreen.dart';*/
/*import 'package:commercial_appl/Widgets/Myproduct.dart';*/
import 'package:commercial_appl/Widgets/Navigationdrawer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Data(),
      child: MaterialApp(
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        backgroundColor: Colors.blue,
      ),
      drawer: navbar(),
    );
  }
}

class Data extends ChangeNotifier {
  double x = 0.0; // Your data and methods go here
}
