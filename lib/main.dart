import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_todo_list/View/add_new_Item.dart';
import 'package:my_todo_list/View/view_item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => ViewItem()),
        GetPage(name: '/add', page: () => AddTodoScreen()),
      ],
    );
  }
}
