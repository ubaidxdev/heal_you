import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:heal_you/Core/common_variabls/common_var.dart';
import 'package:heal_you/Core/common_widgets/app_button.dart';
import 'package:heal_you/Core/common_widgets/cust_back_button.dart';
import 'package:heal_you/Core/common_widgets/custom_text.dart';
import 'package:heal_you/Core/common_widgets/need_help_button.dart';
import 'package:heal_you/Core/my_colors.dart';
import 'package:heal_you/Features/09_verifiation/verification.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

TextEditingController emailController = TextEditingController();

class _ForgetPasswordState extends State<ForgetPassword> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10.w,
              vertical: 15.h,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                  text: 'Forget Password!',
                  color: TextColor.darkTxtCol,
                  fontSize: 30.sp,
                  weight: FontWeight.bold,
                ),
                fixheight,
                //Note
                CustomText(
                  text: 'Enter Your Email we will send you code on your email',
                  color: TextColor.greyTxtCol,
                  fontSize: 18.sp,
                ),
                fixheight,
                //Two TextFields
                Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please Enter Email';
                            }
                            return null;
                          },
                          controller: emailController,
                          textAlign: TextAlign.center,
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
                        SizedBox(height: 40.h),
                      ],
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppButton(
                      onClick: () {
                        debugPrint('Button pressed');
                        if (_formKey.currentState!.validate()) {
                          Get.to(Verification());
                        }
                      },
                      text: 'Continue',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
