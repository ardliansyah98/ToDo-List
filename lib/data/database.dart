import 'package:hive/hive.dart';

class ToDoDatabase {
  List todoList = [];

  // Reference the hive box
  final _myBox = Hive.box('myBox');

  // Run this method if this is the first time ever opening this app
  void createInitialData() {
    todoList = [
      ["Make tutorial", false],
      ["Do exercise", false],
    ];
  }

  // Load the data from the database
  void loadData() {
    todoList = _myBox.get("TODOLIST");
  }

  // Update the database
  void updateDatabase() {
    _myBox.put("TODOLIST", todoList);
  }
}
