import 'package:flutter/material.dart';
import 'package:pbm_2023/page/form_page.dart';
import 'package:pbm_2023/page/stack_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/form",
      routes: {
        "/form" :(context) => FormPage(),
        "/stack" :(context) => StackPage()
      },
    );
  }
}
