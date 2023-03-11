import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:to_do_list_app/model/tasks.dart';

class TaskData extends ChangeNotifier{
  List<Task> _tasks = [
    Task(name: 'Task 1'),
    Task(name: 'Task 2'),
  ];

  UnmodifiableListView<Task> get tasks{
    return UnmodifiableListView(_tasks);
  }
  //Read
  int get taskCount{
    return _tasks.length;
  }
  //Add
  void addTask(String newTaskTitle){
    final task = Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }
  //update the checkbox
  void updateTask(Task whichTask){
    whichTask.toggleDone();
    notifyListeners();
  }
  //Delete
  void deleteTask(Task task){
    _tasks.remove(task);
    notifyListeners();
  }
}