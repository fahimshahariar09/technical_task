import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:technical_task/assignment1/auth/sign_in/view/sign_in_screen.dart';
import 'package:technical_task/assignment1/auth/sign_up/view/success_dialog.dart';
import 'package:technical_task/common_widget/custom_button.dart';
import 'package:technical_task/common_widget/custom_text.dart';
import 'package:technical_task/common_widget/custom_text_field.dart';
import 'package:technical_task/constant/app_color.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back_ios, size: 25),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              SizedBox(height: 15),
              CustomText(
                text: "Welcome Back!",
                fontSize: 26,
                fontWeight: FontWeight.bold,
                fontColor: AppColors.black,
              ),
              SizedBox(height: 10),
              CustomText(
                text:
                    "Let’s join to Eduline learning ecosystem & meet\nour professional mentor. It’s Free!",
                fontColor: Colors.grey,
                fontWeight: FontWeight.w400,
                fontSize: 14,
                textAlign: TextAlign.start,
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  CustomText(
                    text: "Email Address",
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontColor: AppColors.secondary,
                  ),
                ],
              ),
              SizedBox(height: 15),
              CustomTextFormField(
                hintText: 'pristia@gmail.com',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  if (!RegExp(
                    r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
                  ).hasMatch(value)) {
                    return 'Enter a valid email';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  CustomText(
                    text: "Full Name",
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontColor: AppColors.secondary,
                  ),
                ],
              ),
              SizedBox(height: 15),
              CustomTextFormField(
                hintText: 'Pristia Candra',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your Name';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  CustomText(
                    text: "Password",
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontColor: AppColors.secondary,
                  ),
                ],
              ),
              SizedBox(height: 15),
              CustomTextFormField(
                hintText: 'Password',
                isPassword: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  if (value.length < 6) {
                    return 'Password must be at least 6 characters';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              CustomButton(
                text: "Label",
                fontSize: 16,
                fontWeight: FontWeight.w500,
                onTap: () {
                  Get.dialog(SuccessDialog());
                },
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    text: "Already have an account? ",
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    fontColor: AppColors.grey,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(SignInScreen());
                    },
                    child: CustomText(
                      text: " Sign In",
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                      fontColor: AppColors.blue,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
