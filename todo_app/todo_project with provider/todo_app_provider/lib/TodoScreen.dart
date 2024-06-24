// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app_provider/Colors1/constants.dart';
import 'package:todo_app_provider/models/tasks.dart';
import 'package:todo_app_provider/widgets/Tasks_list.dart';
import 'package:todo_app_provider/widgets/add_task.dart';
import 'package:todo_app_provider/widgets/task_info.dart';
import 'package:todo_app_provider/widgets/todo_appbar.dart';

class TodoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: maincolor,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (context) {
              return AddTask(addNewTask: (newVal) {
                Provider.of<TaskData>(context, listen: false).addTask(newVal);
                Navigator.pop(context);
              });
            },
          );
        },
        backgroundColor: secColor,
        foregroundColor: Colors.white,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            TodoAppbar(),
            TaskInfo(
              Done: Provider.of<TaskData>(context).countdone,
              due: Provider.of<TaskData>(context).countedue,
            ),
            SizedBox(height: 20),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TaskList(
                  Tasks_list: Provider.of<TaskData>(context).tasks,
                 updateTask(index) {
                    Provider.of<TaskData>(context, listen: false).updateTask(index);
                  },
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}