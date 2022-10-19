import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:heal_you/Core/common_variabls/common_var.dart';
import 'package:heal_you/Core/common_widgets/app_button.dart';
import 'package:heal_you/Core/common_widgets/cust_back_button.dart';
import 'package:heal_you/Core/common_widgets/custom_text.dart';
import 'package:heal_you/Core/common_widgets/need_help_button.dart';
import 'package:heal_you/Core/my_colors.dart';
import 'package:heal_you/Features/04_gender/gender.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 12.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [CustBackButton(), NeedHelp()],
                ),
                SizedBox(height: 40.h),
                CustomText(
                  text: 'Create Accaount',
                  fontSize: 34.sp,
                  weight: FontWeight.bold,
                ),
                CustomText(
                  text: 'Fill the details to create account',
                  fontSize: 17.sp,
                  color: TextColor.greyTxtCol,
                ),
                fixheight,
                Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: name,
                          style: TextStyle(fontSize: 20.sp),
                          decoration: InputDecoration(hintText: 'Name'),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please Enter Name';
                            }
                          },
                        ),
                        fixheight,
                        TextFormField(
                          controller: email,
                          style: TextStyle(fontSize: 20.sp),
                          decoration: InputDecoration(hintText: 'Email'),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please Enter Email';
                            }
                          },
                        ),
                        fixheight,
                        TextFormField(
                          controller: password,
                          style: TextStyle(fontSize: 20.sp),
                          decoration: InputDecoration(hintText: 'Password'),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please Enter Password';
                            }
                          },
                        ),
                      ],
                    )),
                SizedBox(height: 50.sp),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppButton(
                        onClick: () {
                          if (_formKey.currentState!.validate()) {
                            Get.to(Gender());
                          }
                        },
                        text: 'Sign Up'),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
