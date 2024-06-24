import 'package:flutter/material.dart';
import 'package:todo_project/model/task_data.dart';
import 'package:todo_project/wigets/text.dart';

class TaskList extends StatelessWidget {
  final List<Task> tasks;
  final Function updateTask;
  TaskList({super.key, required this.tasks, required this.updateTask});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, i) {
          return SingleTask(  task: tasks[i], updateTask: updateTask);
        });
  }
}

class SingleTask extends StatefulWidget {
  final Task task;
  final Function updateTask;
  SingleTask(
      {super.key, required this.task, required this.updateTask});

  @override
  State<SingleTask> createState() => _SingleTaskState();
}

class _SingleTaskState extends State<SingleTask> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: smallText(
            widget.task.content!,
            color: Colors.black,
          ),
          titleTextStyle: TextStyle(
            decoration: widget.task.isDone! ? TextDecoration.lineThrough : null,
          ),
          trailing: Checkbox(
            value: widget.task.isDone,
            onChanged: (newVal) {
              setState(() {
                widget.task.changeTaskState();
                widget.updateTask();
              });
            },
          ),
        )
      ],
    );
  }
}


