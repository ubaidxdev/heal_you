import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomText extends StatelessWidget {
  CustomText(
      {Key? key,
      required this.text,
      this.color,
      this.fontSize,
      this.weight,
      this.decoration})
      : super(key: key);

  String text;
  Color? color;
  double? fontSize;
  FontWeight? weight;
  TextDecoration? decoration;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color,
          fontSize: fontSize,
          fontWeight: weight,
          decoration: decoration),
    );
  }
}
