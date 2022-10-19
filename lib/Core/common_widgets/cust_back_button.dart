import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:heal_you/Core/my_colors.dart';


class CustBackButton extends StatelessWidget {
  const CustBackButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.back();
      },
      child: Material(
        borderRadius: BorderRadius.circular(25),
        child: Container(
          width: 40.w,
          height: 40.h,
          decoration: BoxDecoration(
              border: Border.all(
                color: TextColor.lightTxtCol,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(25)),
          child: Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
