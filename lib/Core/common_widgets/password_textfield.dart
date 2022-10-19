import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heal_you/Core/my_colors.dart';

class PasswordTextField extends StatelessWidget {
  PasswordTextField({
    Key? key,
    required this.obscureText,
    required this.onClick,
    this.changeIcon,
    this.validator,
    required this.controller,
    required this.text,
  }) : super(key: key);
  String text;
  TextEditingController controller;
  bool? changeIcon = true;
  bool obscureText;
  VoidCallback onClick;
  String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      style: TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.bold,
        color: Color(0xFF000000),
        letterSpacing: 1.5,
      ),
      obscureText: obscureText,
      decoration: InputDecoration(
        suffix: IconButton(
          onPressed: onClick,
          icon: changeIcon == true
              ? Icon(
                  Icons.visibility_off_outlined,
                  color: TextColor.greyTxtCol,
                )
              : Icon(
                  Icons.visibility_outlined,
                  color: TextColor.greyTxtCol,
                ),
        ),
        hintText: text,
        hintStyle: TextStyle(color: TextColor.greyTxtCol, fontSize: 16.sp),
      ),
    );
  }
}
