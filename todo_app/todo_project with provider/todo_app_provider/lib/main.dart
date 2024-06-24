import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/widgets.dart';
import 'package:todo_app_provider/TodoScreen.dart';
import 'package:todo_app_provider/models/tasks.dart';
void main(){
  runApp(MyApp());
}




class MyApp extends StatelessWidget {

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TaskData>(
      create: (context)=>TaskData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TodoApp(),
       ),
    ); 
  }
}

class TodoApp extends StatelessWidget {

  TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return TodoScreen();
     
  
  }
}

