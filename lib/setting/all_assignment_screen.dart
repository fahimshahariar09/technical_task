import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:technical_task/assignment1/splash/view/splash_screen.dart';
import 'package:technical_task/assignment2/view/product_screen.dart';
import 'package:technical_task/assignment3/view/product_page.dart';
import 'package:technical_task/common_widget/custom_button.dart';

class AllAssignmentScreen extends StatelessWidget {
  const AllAssignmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
        title: Text("Bd Calling Task"),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                text: "Assignment1",
                onTap: () {
                  Get.to(() => SplashScreen());
                },
              ),
              SizedBox(height: 15),
              CustomButton(
                text: "Assignment2",
                onTap: () {
                  Get.to(() => ProductScreen());
                },
              ),
              SizedBox(height: 15),
              CustomButton(
                text: "Assignment3",
                onTap: () {
                  Get.to(() => ProductPage());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
