import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:heal_you/Core/common_variabls/common_var.dart';
import 'package:heal_you/Core/common_widgets/app_button.dart';
import 'package:heal_you/Core/common_widgets/cust_back_button.dart';
import 'package:heal_you/Core/common_widgets/custom_text.dart';
import 'package:heal_you/Core/my_colors.dart';
import 'package:heal_you/Features/03_create_account/create_account.dart';

class SubscriptionPage extends StatefulWidget {
  const SubscriptionPage({super.key});

  @override
  State<SubscriptionPage> createState() => _SubscriptionPageState();
}

class _SubscriptionPageState extends State<SubscriptionPage> {
  List title = ['Monthly', 'Annual', 'Frre'];
  List subtitle = [
    '4,423\$/month',
    '20,230\$/ year',
    'Start 7 days free trail'
  ];
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  CustBackButton(),
                  SizedBox(width: 70.w),
                  CustomText(
                    text: 'Subscriptions',
                    color: TextColor.darkTxtCol,
                    fontSize: 22.sp,
                    weight: FontWeight.w800,
                  ),
                ],
              ),
              CustomText(
                text: 'Go Pro',
                weight: FontWeight.bold,
                fontSize: 40.sp,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RowWidget(text: 'Unlimited Workouts'),
                  RowWidget(text: "Video Guide"),
                  RowWidget(text: "Personal Plan")
                ],
              ),
              Wrap(
                children: List.generate(
                  3,
                  (index) {
                    return InkWell(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 20),
                        width: 350.w,
                        height: 100.h,
                        decoration: BoxDecoration(
                          color: selectedIndex == index
                              ? ThemeColor.primeryColor1
                              : Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: TextColor.greyTxtCol),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomText(
                                    text: title[index],
                                    color: selectedIndex == index
                                        ? Color(0xFFFFFFFF)
                                        : TextColor.darkTxtCol,
                                    fontSize: 20.sp,
                                    weight: FontWeight.w800,
                                  ),
                                  CustomText(
                                    text: subtitle[index],
                                    color: selectedIndex == index
                                        ? Color(0xFFFFFFFF)
                                        : TextColor.greyTxtCol,
                                    fontSize: 16.sp,
                                    weight: FontWeight.w800,
                                  ),
                                ],
                              ),
                              Container(
                                height: 25.h,
                                width: 25.h,
                                decoration: BoxDecoration(
                                    // color: Color(0xFFFFFFFF),
                                    border: Border.all(
                                      color: selectedIndex == index
                                          ? Color(0xFFFFFFFF)
                                          : TextColor.greyTxtCol,
                                      width: selectedIndex == index ? 8 : 2,
                                    ),
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              fixheight,
              AppButton(
                onClick: () {
                  Get.to(CreateAccount());
                  switch (selectedIndex) {
                    case 0:
                      print('Monthly Plan selected');
                      break;
                    case 1:
                      print('Annual Plan selected');
                      break;
                    case 2:
                      print('Free 7 days trial selected');
                      break;
                  }
                },
                text: 'Choose',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RowWidget extends StatelessWidget {
  RowWidget({
    required this.text,
    Key? key,
  }) : super(key: key);
  String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.circle,
          size: 10.sp,
        ),
        fixwidth,
        CustomText(
          text: text,
          fontSize: 22.sp,
        )
      ],
    );
  }
}
