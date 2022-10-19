import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:heal_you/Core/common_variabls/common_var.dart';
import 'package:heal_you/Core/common_widgets/app_button.dart';
import 'package:heal_you/Core/common_widgets/cust_back_button.dart';
import 'package:heal_you/Core/common_widgets/custom_text.dart';
import 'package:heal_you/Core/common_widgets/need_help_button.dart';
import 'package:heal_you/Core/my_colors.dart';
import 'package:heal_you/Features/07_sign_in/sigin_in.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  bool hideText = true;
  bool iconCh = true;
  var email;
  final _Key = GlobalKey<FormState>();
  TextEditingController _password = TextEditingController();
  TextEditingController _confirmPassword = TextEditingController();

  void dispose() {
    _password.clear();
    _confirmPassword.clear();

    super.dispose();
  }

  bool _iconOn = true;
  bool? _hideText = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              //App Bar Row

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // ignore: prefer_const_literals_to_create_immutables
                children: [const CustBackButton(), const NeedHelp()],
              ),
              SizedBox(height: 40.h),
              //Sign in Heading
              CustomText(
                text: 'Change Password',
                color: TextColor.darkTxtCol,
                fontSize: 32.sp,
                weight: FontWeight.bold,
              ),
              fixheight,
              //Note
              CustomText(
                text: 'Enter your new Password',
                color: TextColor.greyTxtCol,
                fontSize: 18.sp,
              ),
              fixheight,
              //Two TextFields
              Form(
                  key: _Key,
                  child: Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      TextFormField(
                        // ignore: prefer_const_constructors
                        decoration: InputDecoration(hintText: 'Password'),
                        controller: _password,
                        style: TextStyle(fontSize: 20.sp),

                        validator: (value) {
                          value = _password.text;
                          if (value == null || value.isEmpty) {
                            return 'Enter Password';
                          } else if (value.length < 5) {
                            return 'Password short';
                          }
                          return null;
                        },
                      ),
                      fixheight,
                      TextFormField(
                        // ignore: prefer_const_constructors
                        decoration:
                            InputDecoration(hintText: 'Confirm Password'),
                        style: TextStyle(fontSize: 20.sp),
                        controller: _confirmPassword,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Enter Password';
                          } else if (value.length < 5) {
                            return 'Password short';
                          }
                          if (_password.text != _confirmPassword.text) {
                            return 'Not matched';
                          }
                          return null;
                        },
                      ),
                    ],
                  )),
              //AppButton
              SizedBox(height: 70.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppButton(
                    onClick: () {
                      if (_Key.currentState!.validate()) {
                        Get.to(() => SignInPage());
                        dispose();
                      }
                    },
                    text: 'Confirm',
                  ),
                ],
              ),
            ],
          ),
        )),
      ),
    );
  }
}
