import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:my_todo_list/model/todo_model.dart';

class TodoController extends GetxController {
  final RxList<Todo> todosList = <Todo>[].obs;
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  void clearTextFiled() {
    titleController.clear();
    descriptionController.clear();
  }

  void toggleComplete(int index) {
    todosList[index].isCompleted.value = !todosList[index].isCompleted.value;
  }

  void delete(int index) {
    todosList.removeAt(index);
  }

  void add(Todo todo) {
    todosList.add(todo);
  }

  void saveTodo() {
    add(Todo(
      title: titleController.text,
      description: descriptionController.text,
      isCompleted: false,
    ));
    Get.back();
    clearTextFiled();
  }

  // void saveTodo() {
  //   todosList.add(
  //     Todo(
  //       title: titleController.text,
  //       description: descriptionController.text,
  //       isCompleted: false,
  //     ),
  //   );
  // }
}
