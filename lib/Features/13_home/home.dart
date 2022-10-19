import 'dart:collection';
import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:heal_you/Core/common_variabls/common_var.dart';
import 'package:heal_you/Core/common_widgets/custom_text.dart';
import 'package:heal_you/Core/my_colors.dart';
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
        //Main Body
        body: Padding(
          padding: EdgeInsets.only(top: 20.h, right: 10.w, left: 10.w),
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              // !Profile Row
              const ProfileRow(),
              fixheight,
              // My Plan For Today Container
              fixheight,
              const CustomPurpleContainer()

              //Start New Goal ListView

              //Daily Tasks
            ],
          ),
        ),
      ),
    );
  }
}
