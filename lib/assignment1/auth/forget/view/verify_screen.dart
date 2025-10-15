import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:technical_task/assignment1/auth/forget/view/reset_password.dart';
import 'package:technical_task/assignment1/auth/forget/view/verify_dialog.dart';
import 'package:technical_task/common_widget/custom_button.dart';
import 'package:technical_task/common_widget/custom_text.dart';
import 'package:technical_task/constant/app_color.dart';

class VerifyScreen extends StatefulWidget {
  const VerifyScreen({super.key});

  @override
  State<VerifyScreen> createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 10),
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
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    CustomText(
                      text: "Verify Code",
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      fontColor: AppColors.black,
                    ),
                    SizedBox(height: 10),
                    CustomText(
                      text:
                          "Please enter the code we just sent to\nemail pristia@gmail.com",
                      fontColor: Colors.grey,
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      maxLines: 3,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 40),
                    PinCodeTextField(
                      appContext: context,
                      length: 4,
                      onChanged: (value) {},
                      pinTheme: PinTheme(
                        shape: PinCodeFieldShape.box,
                        fieldHeight: 50,
                        fieldWidth: 50,
                        selectedFillColor: AppColors.white,
                        activeFillColor: AppColors.white,
                        inactiveFillColor: AppColors.white,
                        activeColor: Colors.black,
                        selectedColor: Colors.blue,
                        inactiveColor: Colors.grey.shade400,
                      ),
                    ),
                    SizedBox(height: 30),
                    CustomText(
                      text: "Resend code in 00:48",
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontColor: AppColors.black,
                    ),
                    SizedBox(height: 10),
                    SizedBox(height: 20),
                    CustomButton(
                      onTap: () {
                        Get.dialog(VerifyDialog());
                      },
                      text: "Verify Now",
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColors.white,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
