import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heal_you/Core/my_colors.dart';

import '../common_variabls/common_var.dart';

class CustSignInWith extends StatelessWidget {
  CustSignInWith({
    required this.image,
    required this.title,
    this.color,
    this.txtColor,
    Key? key,
  }) : super(key: key);

  String title;
  String? image;
  Color? color;
  Color? txtColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.h,
      width: double.infinity.w,
      decoration: BoxDecoration(
          border: Border.all(
            color: DarkColor.darklight.withOpacity(0.2),
            width: 2.w,
          ),
          color: color,
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "${imgPath}$image",
            width: 45.w,
            height: 45.h,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 20,
              color: txtColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
