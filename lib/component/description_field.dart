import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  const Description({
    Key? key,
    required this.descriptionController,
  }) : super(key: key);

  final TextEditingController descriptionController;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.green,
      controller: descriptionController,
      decoration: InputDecoration(
        labelText: 'Enter Todo Description',
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
          Icons.directions_walk_rounded,
          color: Colors.green,
        ),
        labelStyle: TextStyle(color: Colors.grey),
      ),
    );
  }
}
