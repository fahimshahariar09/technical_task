import 'package:flutter/material.dart';
import 'package:technical_task/assignment1/view/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       home:  SplashScreen(),
    );
  }
}
