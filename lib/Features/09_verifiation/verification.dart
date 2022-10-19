import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';
import 'package:heal_you/Core/common_variabls/common_var.dart';
import 'package:heal_you/Core/common_widgets/app_button.dart';
import 'package:heal_you/Core/common_widgets/cust_back_button.dart';
import 'package:heal_you/Core/common_widgets/custom_text.dart';
import 'package:heal_you/Core/common_widgets/need_help_button.dart';
import 'package:heal_you/Core/my_colors.dart';
import 'package:heal_you/Features/08_forget_password/forget_password.dart';
import 'package:heal_you/Features/10_change_password/change_password.dart';

class Verification extends StatefulWidget {
  const Verification({super.key});

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  // TextEditingController email_controller = TextEditingController();
  var email_controller = emailController.text;
  TextEditingController first = TextEditingController();
  TextEditingController second = TextEditingController();
  TextEditingController third = TextEditingController();
  TextEditingController forth = TextEditingController();
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
                  // ignore: prefer_const_literals_to_create_immutables
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
                  text: 'Verification',
                  color: TextColor.darkTxtCol,
                  fontSize: 30.sp,
                  weight: FontWeight.bold,
                ),
                fixheight,
                //Note
                CustomText(
                  text: 'We Send Code to ${email_controller}',
                  color: TextColor.greyTxtCol,
                  fontSize: 18.sp,
                ),
                fixheight,

                Form(
                    key: _formKey,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        OtpCircle(context, first),
                        OtpCircle(context, second),
                        OtpCircle(context, third),
                        OtpCircle(context, forth),
                      ],
                    )),
                fixheight,
                Align(
                  alignment: Alignment.center,
                  child: AppButton(
                      onClick: () {
                        debugPrint('Button pressed');
                        if (_formKey.currentState!.validate()) {
                          Get.to(ChangePassword());
                        }
                      },
                      text: 'Continue'),
                ),
                fixheight,
                Align(
                  alignment: Alignment.center,
                  child: TextButton(
                      onPressed: () {},
                      child: CustomText(
                        text: 'Resend Code',
                        color: ThemeColor.secondaryolor1,
                        fontSize: 20.sp,
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

SizedBox OtpCircle(
  BuildContext context,
  TextEditingController controller,
) {
  return SizedBox(
    height: 68.h,
    width: 64.w,
    child: TextFormField(
      controller: controller,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Fill';
        }
      },
      onChanged: ((value) {
        if (value.length == 1) {
          FocusScope.of(context).nextFocus();
        }
      }),
      style: Theme.of(context).textTheme.headline4,
      keyboardType: TextInputType.number,
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(width: 5)),
      ),
      inputFormatters: [
        LengthLimitingTextInputFormatter(1),
        FilteringTextInputFormatter.digitsOnly
      ],
    ),
  );
}
