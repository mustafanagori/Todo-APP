// import 'package:flutter/widgets.dart';
// import 'package:get/get.dart';
// import 'package:my_todo_list/model/todo_model.dart';

// class TodoController extends GetxController {
//   var todos = <Todo>[].obs;
//   TextEditingController titleController = TextEditingController();
//   TextEditingController descriptionController = TextEditingController();

//   void add(Todo todo) {
//     todos.add(todo);
//   }

//   void toggleComplete(int index) {
//     todos[index].isCompleted = !todos[index].isCompleted;
//   }

//   void delete(int index) {
//     todos.removeAt(index);
//   }

//   void saveTodo() {
//     add(Todo(
//       title: titleController.text,
//       description: descriptionController.text,
//       isCompleted: false,
//     ));
//     Get.back();
//   }
// }

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:my_todo_list/model/todo_model.dart';

class TodoController extends GetxController {
  final RxList<Todo> todos = <Todo>[].obs;
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  void clearTextFiled() {
    titleController.clear();
    descriptionController.clear();
  }

  void add(Todo todo) {
    todos.add(todo);
  }

  void toggleComplete(int index) {
    todos[index].isCompleted.value = !todos[index].isCompleted.value;
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
    print(todos.length);
    Get.back();
  }
}
