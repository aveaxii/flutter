import 'package:hive_flutter/hive_flutter.dart';

class TodoDatabase {
  List todoList = [];

  final _myBox = Hive.box('mybox');

  // call if first launch
  void createInitData() {
    todoList = [];
  }

  void loadData() {
    todoList = _myBox.get('TODOLIST');
  }

  void updateDatabase() {
    _myBox.put('TODOLIST', todoList);
  }
}
