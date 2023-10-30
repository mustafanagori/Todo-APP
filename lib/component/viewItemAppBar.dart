import 'package:flutter/material.dart';

class ViewItemAppbar extends StatelessWidget {
  const ViewItemAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.green.shade300,
      title: const Text(
        'TODO LIST',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
