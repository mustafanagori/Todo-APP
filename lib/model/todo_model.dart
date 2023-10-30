// class Todo {
//   String title;
//   String description;
//   bool isCompleted;

//   Todo({
//     required this.title,
//     required this.description,
//     required this.isCompleted,
//   });
// }

import 'package:get/get.dart';

class Todo {
  String title;
  String description;
  final RxBool isCompleted;

  Todo({
    required this.title,
    required this.description,
    required bool isCompleted,
  }) : isCompleted = isCompleted.obs;
}
