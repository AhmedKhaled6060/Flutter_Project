// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:commercial_appl/Widgets/About.dart';
import 'package:commercial_appl/Widgets/Myproduct.dart';
import 'package:commercial_appl/Widgets/homeScreen.dart';
import 'package:commercial_appl/Widgets/user_page.dart';
import 'package:flutter/material.dart';

class navbar extends StatelessWidget {
  navbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildHeader(context),
            buildMenuItem(context),
            // BuildMenuItem(context), // You can add your menu items here
          ],
        ),
      ),
    );
  }
}

Widget buildHeader(BuildContext context) => Material(
      color: Colors.blue,
      child: InkWell(
          onTap: () {
            Navigator.pop(context);
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => UserPage()));
          },
          child: Container(
              padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
              child: Column(children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage('assets/Images/P1'),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  'Ahmed Khaled',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                Text('Ahmed_khaled@gmail.com')
              ]))),
    ); // Your header widget goes here

Widget buildMenuItem(BuildContext context) => Wrap(
      runSpacing: 16,
      children: [
        ListTile(
          leading: Icon(Icons.home_outlined),
          title: Text("Home"),
          onTap: () {
            Navigator.pop(context);
            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => HomeScreen(),
            ));
          },
        ),
        ListTile(
          leading: Icon(Icons.shopping_bag_outlined),
          title: Text("My Products"),
          onTap: () {
            Navigator.pop(context);
            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => MyProduct(),
            ));
          },
        ),
        ListTile(
          leading: Icon(Icons.info_outline_rounded),
          title: Text('About'),
          onTap: () {
            Navigator.pop(context);
            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => AboutPage(),
            ));
          },
        )
      ],
    );
