import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:technical_task/assignment1/auth/sign_up/view/sign_up_screen.dart';
import 'package:technical_task/assignment1/onboarding/controller/onboarding.dart';
import 'package:technical_task/common_widget/custom_text.dart';
import 'package:technical_task/constant/app_color.dart';

class OnBoardingView extends StatelessWidget {
  OnBoardingView({super.key});

  final OnBoardingController controller = Get.put(OnBoardingController());

  final List<Map<String, String>> onboardingData = [
    {
      'title': 'Best online courses\nin the world',
      'description':
          'Now you can learn anywhere, anytime, even if\nthere is no internet access!',
      'image': 'assets/images/onboarding1.png',
    },
    {
      'title': 'Explore your new skill\ntoday',
      'description':
          'Our platform is designed to help you explore\nnew skills. Let’s learn & grow with Eduline!',
      'image': 'assets/images/onboarding2.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            end: Alignment.topRight,
            begin: Alignment.bottomLeft,
            colors: [Color(0xFFFFFFFF), Color(0xFFFFFFFF)],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(height: 50),
                Expanded(
                  child: PageView.builder(
                    controller: controller.pageController,
                    onPageChanged: controller.onPageChanged,
                    itemCount: onboardingData.length,
                    itemBuilder: (context, index) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 200,
                            width: 300,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Image.asset(
                              height: 327,
                              width: 327,
                              onboardingData[index]['image']!,
                              fit: BoxFit.contain,
                            ),
                          ),
                          SizedBox(height: 40),
                          CustomText(
                            text: onboardingData[index]['title']!,
                            fontSize: 28,
                            fontWeight: FontWeight.w700,
                            fontColor: AppColors.black,
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 20),
                          CustomText(
                            text: onboardingData[index]['description']!,
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            fontColor: AppColors.grey,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      );
                    },
                  ),
                ),
                SizedBox(height: 20),
                Obx(
                  () => Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      onboardingData.length,
                      (index) => Container(
                        margin: EdgeInsets.symmetric(horizontal: 4),
                        width: controller.currentPage.value == index ? 10 : 8,
                        height: 8,
                        decoration: BoxDecoration(
                          color: controller.currentPage.value == index
                              ? AppColors.blue
                              : Colors.grey,
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 35),
                  child: Obx(
                    () => Column(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            if (controller.currentPage.value ==
                                onboardingData.length - 1) {
                              Get.to(SignUpScreen());
                            } else {
                              controller.nextPage();
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.blue,
                            foregroundColor: AppColors.white,
                            padding: EdgeInsets.all(20),
                            minimumSize: Size(double.infinity, 40),
                          ),
                          child: CustomText(
                            text:
                                controller.currentPage.value ==
                                    onboardingData.length - 1
                                ? 'Get Started'
                                : 'Next',
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontColor: AppColors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
