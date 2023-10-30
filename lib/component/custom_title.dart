import 'package:flutter/material.dart';

class CustomTitle extends StatelessWidget {
  const CustomTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Add TODO',
      style: TextStyle(
        color: Colors.white,
      ),
    );
  }
}
