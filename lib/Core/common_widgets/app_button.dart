import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heal_you/Core/my_colors.dart';

class AppButton extends StatelessWidget {
  AppButton({Key? key, required this.onClick, required this.text})
      : super(key: key);
  String text;
  VoidCallback onClick;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: white,
      onTap: onClick,
      child: Container(
        height: 60.h,
        width: 310.w,
        decoration: BoxDecoration(
          color: ThemeColor.primeryColor1,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: white,
              fontSize: 20.sp,
              letterSpacing: 1.5,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
      ),
    );
  }
}
