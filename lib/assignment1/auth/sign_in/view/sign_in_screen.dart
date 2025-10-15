import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:technical_task/assignment1/auth/forget/view/forget_password.dart';
import 'package:technical_task/assignment1/auth/sign_up/view/sign_up_screen.dart';
import 'package:technical_task/common_widget/custom_button.dart';
import 'package:technical_task/common_widget/custom_text.dart';
import 'package:technical_task/common_widget/custom_text_field.dart';
import 'package:technical_task/constant/app_color.dart';
import 'package:technical_task/constant/app_images.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool isChecked = true;
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
                Image.asset(AppImages.sign, height: 70, width: 70),
                SizedBox(height: 15),
                CustomText(
                  text: "Welcome Back!",
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  fontColor: AppColors.black,
                ),
                SizedBox(height: 10),
                CustomText(
                  text: "Please login first to start your Theory Test.",
                  fontColor: Colors.grey,
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
                SizedBox(height: 20),
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
                SizedBox(height: 10),
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
                      text: "Password",
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontColor: AppColors.secondary,
                    ),
                  ],
                ),
                SizedBox(height: 10),
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
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          value: isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked = !isChecked;
                            });
                          },
                        ),
                        CustomText(
                          text: "Remember Me",
                          fontWeight: FontWeight.w500,
                          fontColor: AppColors.grey,
                          fontSize: 15,
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: (){
                        Get.to(ForgetPasswordScreen());
                      },
                      child: CustomText(
                        text: "Forgot Password",
                        fontWeight: FontWeight.w500,
                        fontColor: AppColors.grey,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                CustomButton(
                  text: "Sign In",
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  onTap: () {},
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(
                      text: "New to Theory Test? ",
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      fontColor: AppColors.grey,
                    ),
                    GestureDetector(
                      onTap: (){
                        Get.to(SignUpScreen());
                      },
                      child: CustomText(
                        text: " Create Account",
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
      ),
    );
  }
}
