import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heal_you/Core/common_variabls/common_var.dart';
import 'package:heal_you/Core/common_widgets/circle_button.dart';
import 'package:heal_you/Core/common_widgets/custom_text.dart';
import 'package:heal_you/Core/my_colors.dart';
import 'package:heal_you/Features/05_age/age.dart';

class Gender extends StatefulWidget {
  Gender({super.key});

  @override
  State<Gender> createState() => _GenderState();
}

class _GenderState extends State<Gender> {
  List gender = ['Male', 'Female'];
  List msg = [
    'You are planing to use our Platform as Male',
    'You are planing to use our Platform as Female'
  ];

  List genderIcon = [
    Icons.male,
    Icons.female,
  ];

  int _selectedIndex = 0;

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
            text: '\t\t\t\t\tTell us\n your gender',
            fontSize: 40.sp,
            weight: FontWeight.bold,
          ),
          Padding(
            padding: EdgeInsets.only(top: 50.h, bottom: 50.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(
                2,
                (index) {
                  return InkWell(
                    splashColor: Colors.transparent,
                    onTap: () {
                      print('${gender[index]} has been pressed');
                      setState(() {
                        _selectedIndex = index;
                      });
                    },
                    child: SizedBox(
                      height: 170.h,
                      child: Stack(
                        children: [
                          Container(
                            height: 160.h,
                            width: 160.w,
                            decoration: _selectedIndex == index
                                ? BoxDecoration(
                                    color: Color(0xffffffff),
                                    border: Border.all(
                                        width: 1.5,
                                        color: ThemeColor.secondaryolor1),
                                    borderRadius: BorderRadius.circular(40),
                                  )
                                : BoxDecoration(
                                    color: Color(0xffffffff),
                                    border: Border.all(
                                        width: 1.5,
                                        color: TextColor.greyTxtCol),
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    maxRadius: 25.r,
                                    backgroundColor: _selectedIndex == index
                                        ? ThemeColor.secondaryolor1
                                        : Colors.grey[350],
                                    child: Icon(
                                      genderIcon[index],
                                      size: 30.sp,
                                      color: _selectedIndex == index
                                          ? white
                                          : black,
                                    ),
                                  ),
                                  SizedBox(height: 5.h),
                                  CustomText(
                                    text: gender[index],
                                    weight: FontWeight.bold,
                                    fontSize: 20.sp,
                                  ),
                                  CustomText(
                                      color: TextColor.greyTxtCol,
                                      fontSize: 12.sp,
                                      text: msg[index]),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                              top: 169,
                              left: 80,
                              child: _selectedIndex == index
                                  ? CircleAvatar(
                                      maxRadius: 11.r,
                                      backgroundColor:
                                          ThemeColor.secondaryolor1,
                                      child: Icon(
                                        Icons.check,
                                        color: white,
                                        // size: 20.sp,
                                      ),
                                    )
                                  : Text(''))
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          CircleButton(
            onTap: () {
              Get.to(AgePage());
            },
          )
        ],
      ),
    );
  }
}
