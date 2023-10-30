import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_todo_list/controller/todo_controller.dart';

class SaveButton extends StatelessWidget {
  const SaveButton({
    super.key,
    required this.w,
    required this.todoController,
  });

  final double w;
  final TodoController todoController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: w * 0.9,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
        onPressed: () {
          if (todoController.titleController.text.isNotEmpty &&
              todoController.descriptionController.text.isNotEmpty) {
            todoController.saveTodo();
          } else {
            Get.snackbar("Alert", 'Kindly add the title and Description');
          }
        },
        child: const Text(
          'Save',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
