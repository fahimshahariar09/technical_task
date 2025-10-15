import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.text,
    this.fontWeight,
    this.fontSize,
    this.fontColor,
    this.textAlign,
    this.maxLines,
  });

  final String text;
  final FontWeight? fontWeight;
  final double? fontSize;
  final Color? fontColor;
  final TextAlign? textAlign;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: fontWeight ?? FontWeight.normal,
        fontSize: fontSize ?? 16,
        color: fontColor ?? Colors.white,
      ),
      maxLines: maxLines,
      textAlign: textAlign ?? TextAlign.center,
    );
  }
}
