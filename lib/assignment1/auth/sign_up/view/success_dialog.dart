import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:technical_task/assignment1/auth/sign_in/view/sign_in_screen.dart';
import 'package:technical_task/common_widget/custom_button.dart';
import 'package:technical_task/common_widget/custom_text.dart';
import 'package:technical_task/constant/app_color.dart';
import 'package:technical_task/constant/app_images.dart';

class SuccessDialog extends StatelessWidget {
  const SuccessDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AppColors.white,
      content: Container(
        height: 350,
        width: 340,
        decoration: BoxDecoration(color: AppColors.white),
        child: Column(
          children: [
            Image.asset(AppImages.success, height: 150, width: 150),
            SizedBox(height: 20),
            CustomText(
              text: "Successfully Registered",
              fontColor: AppColors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(height: 15),
            CustomText(
              text:
                  "Your account has been registered successfully, now let’s enjoy our features!",
              fontColor: AppColors.secondary,
              fontWeight: FontWeight.w400,
              maxLines: 2,
              fontSize: 15,
            ),
            SizedBox(height: 20),
            CustomButton(
              onTap: () {
                Get.to(() => SignInScreen());
              },
              height: 44,
              text: "Continue",
              fontWeight: FontWeight.w600,
              fontSize: 13,
              cardColor: AppColors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
