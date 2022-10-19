import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heal_you/Core/common_widgets/custom_text.dart';
import 'package:heal_you/Core/my_colors.dart';
import 'package:percent_indicator/percent_indicator.dart';

class CustomPurpleContainer extends StatelessWidget {
  const CustomPurpleContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        debugPrint('My Plan For Today');
      },
      child: Container(
        height: 170.h,
        width: 360.w,
        decoration: BoxDecoration(
            color: Colors.deepPurple[300],
            borderRadius: BorderRadius.circular(50.r)),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 7.h),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //Text
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: 'My Plan',
                    color: white,
                    fontSize: 35.sp,
                    weight: FontWeight.bold,
                  ),
                  CustomText(
                    text: 'For Today',
                    color: white,
                    fontSize: 35.sp,
                    weight: FontWeight.bold,
                  ),
                  CustomText(
                    text: '1/7 Compelete',
                    color: white,
                    fontSize: 20.sp,
                  )
                ],
              ),
              CircularPercentIndicator(
                radius: 50.0.r,
                lineWidth: 13.0,
                animation: true,
                percent: 0.25,
                center: SizedBox(
                    child: Row(
                  children: [
                    SizedBox(
                      width: 20.w,
                    ),
                    CustomText(
                      text: '25',
                      fontSize: 30.sp,
                      weight: FontWeight.bold,
                      color: white,
                    ),
                    CustomText(
                      text: '%',
                      color: white,
                      fontSize: 18.sp,
                    )
                  ],
                )),
                circularStrokeCap: CircularStrokeCap.round,
                progressColor: Colors.deepPurple[400],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
