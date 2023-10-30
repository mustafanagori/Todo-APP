import 'package:flutter/material.dart';

class TodoTitle extends StatelessWidget {
  const TodoTitle({
    Key? key,
    required this.titleController,
  }) : super(key: key);

  final TextEditingController titleController;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: titleController,
      cursorColor: Colors.green,
      decoration: InputDecoration(
        labelText: 'Enter Todo Title',
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
          borderSide: const BorderSide(
            color: Colors.green, // Set the border color to green
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
          borderSide: const BorderSide(
            color: Colors.green, // Set the border color to green
          ),
        ),
        prefixIcon: const Icon(
          Icons.title,
          color: Colors.green,
        ),
        labelStyle: const TextStyle(color: Colors.grey),
      ),
    );
  }
}
