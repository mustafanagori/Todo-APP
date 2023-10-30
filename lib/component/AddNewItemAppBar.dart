import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../View/view_item.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

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
        ),
      ),
      centerTitle: true,
      backgroundColor: Colors.green.shade300,
      title: const Text(
        'Add TODO',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
