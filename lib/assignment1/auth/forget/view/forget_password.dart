import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:technical_task/assignment1/auth/forget/view/verify_screen.dart';
import 'package:technical_task/common_widget/custom_button.dart';
import 'package:technical_task/common_widget/custom_text.dart';
import 'package:technical_task/common_widget/custom_text_field.dart';
import 'package:technical_task/constant/app_color.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 10,),
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back_ios, size: 25),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
                SizedBox(height: 20),
                CustomText(
                  text: "Forgot Password",
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  fontColor: AppColors.black,
                ),
                SizedBox(height: 10),
                CustomText(
                  text:
                      "Enter your email, we will send a\nverification code to email",
                  fontColor: Colors.grey,
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 35),
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
                SizedBox(height: 40),
                CustomButton(
                  text: "Continue",
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  onTap: () {
                    Get.to(VerifyScreen());
                  },
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
