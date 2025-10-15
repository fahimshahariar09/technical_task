import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:technical_task/assignment1/onboarding/view/onboarding_screen.dart';
import 'package:technical_task/common_widget/custom_text.dart';
import 'package:technical_task/constant/app_color.dart';
import 'package:technical_task/constant/app_images.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Get.to(OnBoardingView());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(AppImages.splash, width: 300, height: 300),
              SizedBox(height: 15),
              CustomText(
                text: "Theory test in my language",
                fontWeight: FontWeight.bold,
                fontColor: AppColors.black,
                fontSize: 22,
              ),
              SizedBox(height: 15),
              CustomText(
                text:
                    "I must write the real test will be in English language and this app just helps you to understand the materials in your language",
                fontWeight: FontWeight.w500,
                fontColor: Color(0xff636F85),
                fontSize: 15,
                maxLines: 4,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
