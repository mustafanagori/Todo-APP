import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_todo_list/component/floating_action_button.dart';
import 'package:my_todo_list/component/viewItemAppBar.dart';
import 'package:my_todo_list/controller/todo_controller.dart';

class ViewItem extends StatelessWidget {
  final TodoController todoController = Get.put(TodoController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const ActionButton(),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: ViewItemAppbar(),
      ),
      body: Obx(
        () {
          if (todoController.todosList.isEmpty) {
            return const Center(
              child: Text(
                'No items available.',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.normal),
              ),
            );
          } else {
            return ListView.builder(
              itemCount: todoController.todosList.length,
              itemBuilder: (context, index) {
                var todo = todoController.todosList[index];
                return Dismissible(
                  key: Key(todo.title),
                  background: Container(
                    color: Colors.red,
                    alignment: Alignment.centerRight,
                    padding: const EdgeInsets.only(right: 16),
                    child: const Icon(
                      Icons.delete,
                      color: Colors.white,
                    ),
                  ),
                  onDismissed: (direction) {
                    if (direction == DismissDirection.endToStart) {
                      todoController.delete(index);
                    }
                  },
                  child: Card(
                    elevation: 1,
                    shadowColor: Colors.green,
                    color: Colors.grey[200],
                    child: ListTile(
                      title: Text(todo.title),
                      subtitle: Text(todo.description),
                      leading: Obx(
                        () => SizedBox(
                          width: 24,
                          child: Checkbox(
                            activeColor: Colors.green,
                            checkColor: Colors.white,
                            value: todoController
                                .todosList[index].isCompleted.value,
                            onChanged: (value) =>
                                todoController.toggleComplete(index),
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
