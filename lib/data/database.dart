import 'package:hive/hive.dart';

class ToDoDataBase{
  List toDoList = [];

final _myBox = Hive.box('mybox');
void createInitialDate(){
  toDoList = [
    ["Task 1",false],
    ["Task 2",false],
  ];
}

void loadData(){
  toDoList = _myBox.get("TODOLIST");
}

void updateDataBase(){
  _myBox.put("TODOLIST", toDoList);

}
}