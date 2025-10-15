import 'package:flutter/cupertino.dart';
import 'package:technical_task/common_widget/custom_text.dart';
import 'package:technical_task/constant/app_color.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.border,
    this.cardColor,
    required this.text,
    this.fontWeight,
    this.fontSize,
    this.color,
    required this.onTap,
    this.height,
    this.width,
    this.borderRadius,
  });

  final String text;
  final Border? border;
  final Color? cardColor;
  final FontWeight? fontWeight;
  final double? fontSize;
  final double? height;
  final double? width;
  final Color? color;
  final VoidCallback onTap;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height ?? 45,
        width: width ?? double.infinity,
        decoration: BoxDecoration(
          border: border,
          borderRadius: borderRadius ?? BorderRadius.circular(18),
          color: cardColor ?? AppColors.blue,
        ),
        child: Center(
          child: CustomText(
            text: text,
            fontWeight: fontWeight ?? FontWeight.w500,
            fontSize: fontSize ?? 15,
            fontColor: color ?? AppColors.white,
          ),
        ),
      ),
    );
  }
}
