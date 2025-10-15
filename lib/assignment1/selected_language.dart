import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:technical_task/common_widget/custom_text.dart';

class LanguageSelectionScreen extends StatefulWidget {
  const LanguageSelectionScreen({super.key});

  @override
  State<LanguageSelectionScreen> createState() =>
      _LanguageSelectionScreenState();
}

class _LanguageSelectionScreenState extends State<LanguageSelectionScreen> {
  String? selectedLanguage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back_ios, size: 25),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              SizedBox(height: 20),
              CustomText(
                text: "What is Your Mother Language",
                fontSize: 22,
                fontWeight: FontWeight.bold,
                fontColor: Colors.black,
              ),
              SizedBox(height: 10),
              CustomText(
                text:
                    'Discover what is a mother language podcast description and podcast summary.',
                fontSize: 15,
                fontColor: Colors.grey,
                fontWeight: FontWeight.w400,
              ),
              SizedBox(height: 20),
              Expanded(
                child: ListView(
                  children: [
                    _buildLanguageOption('English (US)', '🇺🇸'),
                    _buildLanguageOption('Indonesia', '🇮🇩'),
                    _buildLanguageOption('Afghanistan', '🇦🇫'),
                    _buildLanguageOption('Algeria', '🇩🇿'),
                    _buildLanguageOption('Malaysia', '🇲🇾'),
                    _buildLanguageOption('Arabic', '🇦🇪'),
                  ],
                ),
              ),
              // Continue Button
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: ElevatedButton(
                  onPressed: () {
                    if (selectedLanguage != null) {
                      // Navigate to next screen or perform action
                      log('Selected: $selectedLanguage');
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    minimumSize: const Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: const Text(
                    'Continue',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLanguageOption(String language, String flag) {
    bool isSelected = selectedLanguage == language;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedLanguage = language;
        });
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8.0),
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
        decoration: BoxDecoration(
          color: isSelected ? Colors.grey[300] : Colors.white,
          borderRadius: BorderRadius.circular(25),
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(flag, style: const TextStyle(fontSize: 20)),
                const SizedBox(width: 10),
                Text(
                  language,
                  style: TextStyle(
                    fontSize: 16,
                    color: isSelected ? Colors.black : Colors.black,
                  ),
                ),
              ],
            ),
            Text(
              isSelected ? 'selected' : 'select',
              style: TextStyle(
                fontSize: 16,
                color: isSelected ? Colors.black : Colors.grey,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
