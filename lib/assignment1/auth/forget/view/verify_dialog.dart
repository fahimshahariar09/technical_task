import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:technical_task/assignment1/auth/forget/view/reset_password.dart';
import 'package:technical_task/common_widget/custom_button.dart';
import 'package:technical_task/common_widget/custom_text.dart';
import 'package:technical_task/constant/app_color.dart';
import 'package:technical_task/constant/app_images.dart';

class VerifyDialog extends StatelessWidget {
  const VerifyDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AppColors.white,
      content: Container(
        height: 330,
        width: 340,
        decoration: BoxDecoration(color: AppColors.white),
        child: Column(
          children: [
            Image.asset(AppImages.verify, height: 134, width: 134),
            SizedBox(height: 20),
            CustomText(
              text: "Success",
              fontColor: AppColors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(height: 15),
            CustomText(
              text: "Your password is succesfully created",
              fontColor: AppColors.secondary,
              fontWeight: FontWeight.w400,
              maxLines: 2,
              fontSize: 15,
            ),
            SizedBox(height: 20),
            CustomButton(
              onTap: () {
                Get.to(() => ResetPasswordScreen());
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
