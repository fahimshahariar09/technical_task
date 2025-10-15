import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:technical_task/assignment1/onboarding/controller/onboarding.dart';
import 'package:technical_task/common_widget/custom_text.dart';
import 'package:technical_task/constant/app_color.dart';

class OnBoardingView extends StatelessWidget {
  OnBoardingView({super.key});

  final OnBoardingController controller = Get.put(OnBoardingController());

  final List<Map<String, String>> onboardingData = [
    {
      'title': 'Let’s Make Your\nPet A Star!',
      'description':
          'Snap, share and shine – Turn every moment, wag, \npurr and cuddle in to a story worth telling.',
      'image': 'assets/images/onboarding1.png',
    },
    {
      'title': 'Woof woof! Welcome\nto FetchFriends',
      'description':
          'Where every tail wags for a reason! Ready to meet\nfurry friends and their favorite humans? Let’s fetch\nsome fun together!',
      'image': 'assets/images/onboarding2.png',
    },
    {
      'title': 'Ready to Create an\nNew Account',
      'description':
          'Snap, share and shine – Turn every moment, wag, purr\nand cuddle in to a story worth telling.',
      'image': 'assets/images/onboarding3.png',
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
            colors: [Color(0xFFE7B10A), Color(0x0ff9d949)],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(height: 50),
                // Details of On Boarding Screen
                Expanded(
                  child: PageView.builder(
                    controller: controller.pageController,
                    onPageChanged: controller.onPageChanged,
                    itemCount: onboardingData.length,
                    itemBuilder: (context, index) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Image
                          Container(
                            height: 200, // Reduced height
                            width: 300, // Reduced width
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Image.asset(
                              height: 286,
                              width: 300,
                              onboardingData[index]['image']!,
                              fit: BoxFit
                                  .contain, // Show full image without cropping
                            ),
                          ),
                          SizedBox(height: 70),
                          // Title
                          CustomText(
                            text: onboardingData[index]['title']!,
                            fontSize: 28,
                            fontWeight: FontWeight.w700,
                            fontColor: AppColors.white,
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 20),
                          // Description
                          CustomText(
                            text: onboardingData[index]['description']!,
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: AppColors.white,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      );
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 35),
                  child: Obx(
                    () => Column(
                      children: [
                        //Button For Next
                        ElevatedButton(
                          onPressed: () {
                            if (controller.currentPage.value ==
                                onboardingData.length - 1) {
                              //Get.offAllNamed('/WelcomeView');
                              Get.to(SelectRoleView());
                            } else {
                              controller.nextPage();
                            }
                          },

                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.fullblack,
                            foregroundColor: AppColors.white,
                            padding: EdgeInsets.all(25),
                            minimumSize: Size(50, 15), // Full width
                          ),
                          child:
                              controller.currentPage.value ==
                                  onboardingData.length - 1
                              ? Icon(Icons.arrow_forward_rounded, size: 25)
                              : Icon(Icons.arrow_forward_rounded, size: 25),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 40),
                // Dots Indicator
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
                              ? AppColors.white
                              : Colors.grey,
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 80),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
