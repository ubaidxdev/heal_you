import 'dart:collection';
import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_connect/http/src/_http/_html/_file_decoder_html.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:heal_you/Core/common_variabls/common_var.dart';
import 'package:heal_you/Core/common_widgets/custom_text.dart';
import 'package:heal_you/Core/model/model.dart';
import 'package:heal_you/Core/my_colors.dart';
import 'package:heal_you/Features/13_home/cal_container.dart';
import 'package:heal_you/Features/13_home/custom_profile_row.dart';
import 'package:heal_you/Features/13_home/custom_purple_container.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        //Main Body
        body: Padding(
          padding: EdgeInsets.only(top: 20.h, right: 10.w, left: 10.w),
          child: SingleChildScrollView(
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                // !Profile Row
                const ProfileRow(),
                fixheight,
                // My Plan For Today Container
                fixheight,
                const CustomPurpleContainer(),
                fixheight,
                //Start New Goal ListView
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: 'Start New Goal',
                      fontSize: 25.sp,
                      weight: FontWeight.bold,
                    ),
                    TextButton(
                      onPressed: () {
                        debugPrint('See Alll');
                      },
                      child: CustomText(
                        text: 'See all',
                        color: ThemeColor.primeryColor2,
                        fontSize: 20.sp,
                        weight: FontWeight.bold,
                      ),
                    )
                  ],
                ),

                fixheight,
                //ListView Containers...

                SizedBox(
                  height: 340.h,
                  // width: 360,
                  child: ListView.builder(
                      itemCount: data.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        var model_data = data[index];
                        return InkWell(
                          onTap: () {
                            debugPrint('See All Data');
                          },
                          child: StartNewGoal(
                            title: model_data.title,
                            subtitle: model_data.subtitle,
                            image: model_data.image,
                            cal: model_data.cal,
                            time: model_data.time,
                          ),
                        );
                      }),
                )

                //Daily Tasks
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class StartNewGoal extends StatelessWidget {
  StartNewGoal({
    required this.title,
    required this.subtitle,
    required this.image,
    required this.time,
    required this.cal,
    Key? key,
  }) : super(key: key);
  String title;
  String subtitle;
  String image;
  String time;
  String cal;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 250.h,
      width: 350.w,
      margin: EdgeInsets.symmetric(horizontal: 10.w),
      decoration: BoxDecoration(
          color: white, borderRadius: BorderRadius.circular(50.r)),
      child: Stack(
        children: [
          Container(
            height: 170.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.r),
              // ignore: prefer_const_constructors
              image: DecorationImage(
                  image: NetworkImage(
                    image,
                  ),
                  fit: BoxFit.cover),
            ),
          ),
          Positioned(
            right: 20.w,
            top: 130.h,
            child: Material(
              elevation: 5,
              borderRadius: BorderRadius.circular(50.r),
              child: CircleAvatar(
                maxRadius: 35.r,
                backgroundColor: white,
                child: Icon(
                  Icons.play_arrow_rounded,
                  color: ThemeColor.secondaryolor1,
                  size: 40.sp,
                ),
              ),
            ),
          ),
          Positioned(
            top: 180.h,
            left: 15.w,
            child: CustomText(
              text: title,
              color: black,
              fontSize: 30.sp,
              weight: FontWeight.w900,
            ),
          ),
          Positioned(
            top: 220.h,
            left: 15.w,
            child: CustomText(
              text: subtitle,
              color: Colors.grey.shade400,
              fontSize: 20.sp,
              // weight: FontWeight.w700,
            ),
          ),
          Positioned(
            bottom: 15.h,
            left: 15.w,
            child: CaleriesContainer(
              color: Colors.green.shade400,
              icon: Icons.watch_later_outlined,
              unit: 'min',
              value: time,
            ),
          ),
          Positioned(
            bottom: 15.h,
            left: 135.w,
            child: CaleriesContainer(
              color: Colors.orange,
              icon: Icons.fireplace_rounded,
              value: cal,
              unit: 'cal',
            ),
          ),
        ],
      ),
    );
  }
}
