import 'package:flutter/material.dart';
import 'package:technical_task/assignment1/auth/sign_in/view/sign_in_screen.dart';
import 'package:technical_task/assignment1/auth/sign_up/view/sign_up_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: SignUpScreen());
  }
}
