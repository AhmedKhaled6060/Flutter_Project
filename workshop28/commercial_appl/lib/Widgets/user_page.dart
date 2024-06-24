import 'package:commercial_appl/Widgets/Navigationdrawer.dart';
import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {
  UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('User Page'),
          backgroundColor: Colors.blue,
        ),
        drawer: navbar(),
        body: Container(
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
            ])));
  }
}
