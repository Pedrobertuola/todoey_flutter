import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:todoey/models/task.dart';

class TasksList extends StatefulWidget {
  @override
  State<TasksList> createState() => _TasksListState();

}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: 'Buy chicken'),
    Task(name: 'Train jiu-jitsu'),
    Task(name: 'Study Flutter '),
  ];

 
   void addTask(task) {
    tasks.add(task);
  }
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: tasks[index].name,
          isChecked: tasks[index].isDone,
          checkboxCallback: (checkboxState) {
            setState(() {
              tasks[index].toggleDone();
            });
          },
        );
      },
      itemCount: tasks.length,
    );
  }
}
