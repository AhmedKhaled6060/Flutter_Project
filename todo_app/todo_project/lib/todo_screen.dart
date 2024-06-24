// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:todo_project/constants.dart';
import 'package:todo_project/model/task_data.dart';
import 'package:todo_project/wigets/TaskInfo.dart';
import 'package:todo_project/wigets/TaskList.dart';
import 'package:todo_project/wigets/TodoAppbar.dart';
import 'package:todo_project/wigets/add_task.dart';
class TodoScreen extends StatefulWidget {

  TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
 
 List<Task> tasks=[
  
 ];
   void updateTask(){
        setState(() {
          
        });
      }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: maincolor,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
showModalBottomSheet(context: context, 
isScrollControlled: true,
builder:(context){ return AddTask(addNewTask: (newVal){setState(() {
  tasks.add(Task(content: newVal));
});
Navigator.pop(context);
},);});
        },
        backgroundColor: secColor,
        foregroundColor: Colors.white,
      ),
     
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    
    body: Padding(padding: EdgeInsets.symmetric(
      horizontal: 20
    ),
    child:Column(
      children: [
        TodoAppbar(),

        TaskInfo( Done: Task.countDone, due: Task.countDue,),

        SizedBox(height: 20,),
        Expanded(child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5)
          ),
       child: TaskList( tasks: tasks, updateTask: updateTask), )),
        SizedBox(height: 20,),


      ],
    
    ),
     ),
    );
  }
}