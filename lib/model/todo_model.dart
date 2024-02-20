import 'package:get/get.dart';

class Todo {
  String title;
  String description;
  RxBool isCompleted;

  Todo({
    required this.title,
    required this.description,
    required bool isCompleted,
  }) : isCompleted = isCompleted.obs;
}
