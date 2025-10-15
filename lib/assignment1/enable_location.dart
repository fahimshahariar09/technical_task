import 'package:flutter/material.dart';
import 'package:technical_task/common_widget/custom_button.dart';
import 'package:technical_task/common_widget/custom_text.dart';

class EnableLocation extends StatefulWidget {
  const EnableLocation({super.key});

  @override
  State<EnableLocation> createState() => _EnableLocationState();
}

class _EnableLocationState extends State<EnableLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(
                text: "Enable Location",
                fontColor: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: 20),
              CustomText(
                text:
                    "Kindly allow us to access your location to provide you with suggestions for nearby salons",
                fontSize: 14,
                fontColor: Colors.grey,
                fontWeight: FontWeight.w400,
                maxLines: 3,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              CustomButton(text: "Enable", onTap: () {}),
              SizedBox(height: 20),
              CustomButton(
                text: "Skip, Not Now",
                cardColor: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 15,
                onTap: () {},
                color: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
