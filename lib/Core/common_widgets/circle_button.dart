import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heal_you/Core/my_colors.dart';

class CircleButton extends StatelessWidget {
  CircleButton({
    required this.onTap,
    Key? key,
  }) : super(key: key);
  VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: CircleAvatar(
        maxRadius: 35.r,
        backgroundColor: ThemeColor.primeryColor1,
        child: Icon(
          Icons.arrow_forward_ios,
          color: white,
          size: 30.sp,
        ),
      ),
    );
  }
}
