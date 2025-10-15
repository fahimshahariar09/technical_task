import 'package:flutter/material.dart';
import 'package:technical_task/constant/app_color.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.height,
    this.isPassword = false,
    this.validator,
    this.controller,
  });

  final String hintText;
  final Icon? prefixIcon;
  final Icon? suffixIcon;
  final double? height;
  final bool isPassword;
  final String? Function(String?)? validator;
  final TextEditingController? controller;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height ?? 48,
      width: double.infinity,
      child: TextFormField(
        controller: widget.controller,
        obscureText: widget.isPassword && _obscureText,
        validator: widget.validator,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 10, right: 10),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: Colors.red),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: Colors.red),
          ),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
          hintText: widget.hintText,
          hintStyle: TextStyle(
            color: AppColors.black,
            fontWeight: FontWeight.w500,
            fontSize: 15,
          ),
          prefixIcon: widget.prefixIcon,
          suffixIcon: widget.isPassword
              ? IconButton(
                  icon: Icon(
                    _obscureText ? Icons.visibility_off : Icons.visibility,
                    color: Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                )
              : widget.suffixIcon,
          fillColor: AppColors.white,
          filled: true,
        ),
      ),
    );
  }
}
