import 'package:flutter/widgets.dart';

class CustomImageWidget extends StatelessWidget {
  const CustomImageWidget({
    super.key,
    required this.h,
  });

  final double h;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: h * 0.4,
      child: Image.asset('assets/todo.jpg',
          fit: BoxFit.cover), // Provide the correct asset path
    );
  }
}
