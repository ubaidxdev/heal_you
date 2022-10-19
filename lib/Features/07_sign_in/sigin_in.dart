import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:heal_you/Core/common_variabls/common_var.dart';
import 'package:heal_you/Core/common_widgets/app_button.dart';
import 'package:heal_you/Core/common_widgets/cust_back_button.dart';
import 'package:heal_you/Core/common_widgets/custom_text.dart';
import 'package:heal_you/Core/common_widgets/need_help_button.dart';
import 'package:heal_you/Core/common_widgets/password_textfield.dart';
import 'package:heal_you/Core/my_colors.dart';
import 'package:heal_you/Features/08_forget_password/forget_password.dart';
import 'package:heal_you/Features/12_landing_page/main_page.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool hideText = true;
  bool iconCh = true;
  var email;
  final _fieldKey = GlobalKey<FormState>();
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

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
                children: [
                  const CustBackButton(),
                  NeedHelp(),
                ],
              ),
              SizedBox(
                height: 40.h,
              ),
              //Sign in Heading
              CustomText(
                text: 'Sign In',
                color: TextColor.darkTxtCol,
                fontSize: 40.sp,
                weight: FontWeight.bold,
              ),
              fixheight,
              //Note
              CustomText(
                text: 'Fill the Details to Sign in account',
                color: TextColor.greyTxtCol,
                fontSize: 18.sp,
              ),
              fixheight,
              //Two TextFields
              Form(
                  key: _fieldKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _email,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please Enter Email';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          hintText: 'Email',
                          hintStyle: TextStyle(
                              color: TextColor.greyTxtCol, fontSize: 16.sp),
                        ),
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                          color: TextColor.darkTxtCol,
                          letterSpacing: 1.5,
                        ),
                      ),
                      fixheight,
                      PasswordTextField(
                        text: 'Password',
                        controller: _password,
                        obscureText: hideText,
                        changeIcon: iconCh,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please Enter Password';
                          } else if (value.length < 5) {
                            return 'Password is too short';
                          }
                          return null;
                        },
                        onClick: () {
                          setState(() {
                            hideText = !hideText;
                            iconCh = !iconCh;
                          });
                        },
                      ),
                    ],
                  )),
              fixheight, //AppButton
              Row(
                children: [
                  fixwidth,
                  fixwidth,
                  AppButton(
                    onClick: () {
                      if (_fieldKey.currentState!.validate()) {
                        Get.to(() => LandingScreen());
                      }
                      print('Button Pressed');
                    },
                    text: 'Sign In',
                  ),
                ],
              ),

              fixheight,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      Get.to(ForgetPassword());
                    },
                    child: CustomText(
                      text: 'Forget Password?',
                      color: ThemeColor.secondaryolor1,
                      fontSize: 18.sp,
                    ),
                  ),
                ],
              )
              //TODO: TextButton
            ],
          ),
        )),
      ),
    );
  }
}
