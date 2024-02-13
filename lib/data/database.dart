import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];

  //refrence the box
  final _myBox = Hive.box('myBox');

  //run this method if this is the 1st time ever opnning this app
  void createInitiatlData() {
    toDoList = [
      ["Make Tutorial", false],
      ['Do Excercise', false],
    ];
  }

  //load data from data base
  void loadData() {
    toDoList = _myBox.get('TODOLIST');
  }

  //update database
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
