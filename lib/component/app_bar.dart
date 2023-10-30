import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_todo_list/View/view_item.dart';
import 'package:my_todo_list/component/custom_title.dart';

class ToDoAppbar extends StatelessWidget {
  const ToDoAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              Get.to(ViewItem());
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            )),
        centerTitle: true,
        backgroundColor: Colors.green.shade300,
        title: CustomTitle());
  }
}
