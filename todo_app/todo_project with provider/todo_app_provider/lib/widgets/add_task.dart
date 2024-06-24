   
// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app_provider/models/tasks.dart';
import 'package:todo_app_provider/Colors1/constants.dart';
// ignore: depend_on_referenced_packages


// ignore: must_be_immutable
class AddTask extends StatelessWidget {
  final Function addNewTask;
   AddTask({super.key, required this.addNewTask, this.textFieldData = ''});
  String textFieldData = '';
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
          right: 15,
          left: 15,
        ),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: maincolor,
              ),
             ) ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (String value) {
                textFieldData = value;
              },
            ),
            SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {
               Provider.of<TaskData>(context, listen: false).addTask(textFieldData);
               Navigator.pop(context);
               },
              style: TextButton.styleFrom(
                  backgroundColor: maincolor,
                  shape: const BeveledRectangleBorder()),
              child: const Text(
                'Add Task',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            )
            ],
        ),
      ),
    );
  }
}
