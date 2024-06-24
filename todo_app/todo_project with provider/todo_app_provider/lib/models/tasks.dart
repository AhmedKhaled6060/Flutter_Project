// ignore_for_file: empty_constructor_bodies

import 'package:flutter/material.dart';

mixin Task{
  static int countdone=0;
  static int countedue=0;
}

class SingleTaskData with Task{
  String? content;
  bool? isDone;
  SingleTaskData({required String content, bool isDone=false,}){

    this.content=content;
    this.isDone= isDone;
    if(isDone){
      Task.countdone++;
    }else{
      Task.countedue++;
    }
  }
  void changeTaskState(){
    isDone=!isDone!;
    if(isDone!){
      Task.countdone++;
      Task.countedue--;
    }else{
      Task.countdone--;
      Task.countedue++;
      
    }
  }
}

class TaskData extends ChangeNotifier with Task{
  List<SingleTaskData> tasks=[];
   int countdone= Task.countdone;
   int countedue= Task.countedue;
  
   void updateTask(SingleTaskData task){
    task.changeTaskState();
    countdone=Task.countdone;
    countedue=Task.countedue;
    notifyListeners();
   }

void addTask(String Taskcontent){
  tasks.add(SingleTaskData(content: Taskcontent));
  countedue=Task.countedue;
  notifyListeners();
}
}
