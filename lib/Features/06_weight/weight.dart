import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heal_you/Core/common_variabls/common_var.dart';
import 'package:heal_you/Core/common_widgets/circle_button.dart';
import 'package:heal_you/Core/common_widgets/custom_text.dart';
import 'package:heal_you/Core/my_colors.dart';
import 'package:heal_you/Features/07_sign_in/sigin_in.dart';

class WeightPage extends StatefulWidget {
  const WeightPage({super.key});

  @override
  State<WeightPage> createState() => _WeightPageState();
}

class _WeightPageState extends State<WeightPage> {
  int _selectedIndex = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Text(
              "Heal You ",
              style: GoogleFonts.amaticSc(
                  fontSize: 50.sp,
                  letterSpacing: 4.0,
                  color: ThemeColor.primeryColor1,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
          ),
          fixheight,
          CustomText(
            text: '\t\t\tTell us\n your Weight',
            fontSize: 40.sp,
            weight: FontWeight.bold,
          ),
          fixheight,
          fixheight,
          Container(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 100,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomText(
                        text: '$index',
                        fontSize: _selectedIndex == index ? 30.sp : 20.sp,
                        weight: FontWeight.bold,
                        color:
                            _selectedIndex == index ? black : Colors.grey[350],
                      ),
                      Container(
                        height: _selectedIndex == index ? 80.h : 60.h,
                        width: _selectedIndex == index ? 4.w : 2.w,
                        color:
                            _selectedIndex == index ? black : Colors.grey[350],
                        margin: EdgeInsets.symmetric(
                            horizontal: 35.w, vertical: 20.h),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          fixheight,
          fixheight,
          CircleButton(
            onTap: () {
              Get.to(() => SignInPage());
            },
          )
        ],
      ),
    );
  }
}
