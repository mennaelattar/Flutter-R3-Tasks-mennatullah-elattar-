import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_day12/models/task_model.dart';
import 'package:todo_day12/models/user_model.dart';

class AppViewModel extends ChangeNotifier {
  //create instance from models
  List<Task> tasks = <Task>[];
  User user = User("Menna El-Attar");

  Color clrvl1 = Colors.grey.shade50;
  Color clrvl2 = Colors.grey.shade200;
  Color clrvl3 = Colors.grey.shade800;
  Color clrvl4 = Colors.grey.shade900;

  //length of list
  int get numTasks => tasks.length;

  //remaining task
  int get numTaskRemaining => tasks.where((Task) => !Task.complete).length;

  //username
  String get username =>user.username;

  //to add task
  void addTask(Task newTask)
  {
    tasks.add(newTask);
    notifyListeners();
  }

  bool getTaskValue(int taskIndex){
    return tasks[taskIndex].complete;
  }

  void setTaskValue(int taskIndex,bool taskValue)
  {
    tasks[taskIndex].complete =taskValue;
    notifyListeners();
  }

  void updateUsername(String newUsername)
  {
    user.username = newUsername;
    notifyListeners();
  }

  String getTaskTitle(int taskIndex)
  {
    return tasks[taskIndex].title;
  }

  void deleteTask(int taskIndex)
  {
    tasks.removeAt(taskIndex);
    notifyListeners();
  }

  void deleteAllTasks()
  {
    tasks.clear();
    notifyListeners();
  }

  void deleteCompletedTasks()
  {
    tasks = tasks.where((task) => !task.complete).toList();
    notifyListeners();
  }


  //to create a form to enter tasks
  void bottomSheldBulider(Widget bottomSheetView, BuildContext context) {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        context: context,
        builder: ((context) {
          return bottomSheetView;
        }));
  }
}
