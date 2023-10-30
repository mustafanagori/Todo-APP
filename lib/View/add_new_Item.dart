import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_todo_list/component/AddNewItemAppBar.dart';
import 'package:my_todo_list/component/button.dart';
import 'package:my_todo_list/component/description_field.dart';
import 'package:my_todo_list/component/image_container.dart';
import 'package:my_todo_list/component/title_field.dart';
import 'package:my_todo_list/controller/todo_controller.dart';

class AddTodoScreen extends StatelessWidget {
  final TodoController todoController = Get.find();

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: CustomAppBar(), // Use CustomAppBar here
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: ListView(
          children: [
            CustomImageWidget(h: h),
            SizedBox(
              height: h * 0.1,
            ),
            TodoTitle(titleController: todoController.titleController),
            SizedBox(
              height: h * 0.1,
            ),
            Description(
                descriptionController: todoController.descriptionController),
            SizedBox(
              height: h * 0.3,
            ),
            SaveButton(w: w, todoController: todoController),
          ],
        ),
      ),
    );
  }
}
