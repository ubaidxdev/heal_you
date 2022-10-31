import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heal_you/Core/common_widgets/custom_text.dart';

class CaleriesContainer extends StatelessWidget {
  CaleriesContainer({
    required this.color,
    required this.icon,
    required this.unit,
    required this.value,
    Key? key,
  }) : super(key: key);
  Color color;
  IconData? icon;
  String value;
  String unit;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      width: 100.w,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        border: Border.all(
          width: 2.w,
          color: color,
        ),
        borderRadius: BorderRadius.circular(30.r),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              icon,
              color: color,
              size: 14.sp,
            ),
            CustomText(
              text: value,
              fontSize: 15.sp,
              color: color,
            ),
            CustomText(
              text: unit,
              fontSize: 15.sp,
              color: color,
            ),
          ],
        ),
      ),
    );
  }
}
