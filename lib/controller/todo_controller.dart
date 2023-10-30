import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:my_todo_list/model/todo_model.dart';

class TodoController extends GetxController {
  var todos = <Todo>[].obs;
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  void add(Todo todo) {
    todos.add(todo);
  }

  void toggleComplete(int index) {
    todos[index].isCompleted = !todos[index].isCompleted;
  }

  void delete(int index) {
    todos.removeAt(index);
  }

  void saveTodo() {
    add(Todo(
      title: titleController.text,
      description: descriptionController.text,
      isCompleted: false,
    ));
    Get.back();
  }
}
