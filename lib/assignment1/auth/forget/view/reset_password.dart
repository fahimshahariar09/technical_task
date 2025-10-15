import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:technical_task/assignment1/auth/sign_in/view/sign_in_screen.dart';
import 'package:technical_task/common_widget/custom_button.dart';
import 'package:technical_task/common_widget/custom_text.dart';
import 'package:technical_task/common_widget/custom_text_field.dart';
import 'package:technical_task/constant/app_color.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(children: [Icon(Icons.arrow_back_ios, size: 25)]),
                SizedBox(height: 20),
                CustomText(
                  text: "Reset Password",
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  fontColor: AppColors.black,
                ),
                SizedBox(height: 10),
                CustomText(
                  text:
                      "Your password must be at least 8 characters long and include a combination of letters, numbers",
                  fontColor: Colors.grey,
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                  maxLines: 3,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 35),
                Row(
                  children: [
                    CustomText(
                      text: "New Password",
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontColor: AppColors.secondary,
                    ),
                  ],
                ),
                SizedBox(height: 15),
                CustomTextFormField(
                  hintText: 'New Password',
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
                Row(
                  children: [
                    CustomText(
                      text: "Confirm Password",
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontColor: AppColors.secondary,
                    ),
                  ],
                ),
                SizedBox(height: 10),
                CustomTextFormField(
                  hintText: 'Confirm Password',
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
                SizedBox(height: 40),
                CustomButton(
                  text: "Submit",
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  onTap: () {
                    Get.to(SignInScreen());
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
