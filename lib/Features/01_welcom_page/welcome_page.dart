import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heal_you/Core/common_variabls/common_var.dart';
import 'package:heal_you/Core/common_widgets/cust_sign_in_with.dart';
import 'package:heal_you/Core/common_widgets/custom_text.dart';
import 'package:heal_you/Core/my_colors.dart';
import 'package:heal_you/Features/02_subscription/subscription.dart';
import 'package:heal_you/Features/07_sign_in/sigin_in.dart';

// import 'package:project_to_show/library.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

// String imgPath = 'assets/images/';

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(
                text: 'Welcome to',
                color: TextColor.darkTxtCol,
                fontSize: 40.sp,
                weight: FontWeight.bold,
              ),
              Text(
                "Heal You ",
                style: GoogleFonts.amaticSc(
                    fontSize: 50.sp,
                    letterSpacing: 4.0,
                    color: ThemeColor.primeryColor1,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
              fixheight,
              InkWell(
                onTap: () {
                  Get.to(() => SignInPage());
                },
                child: CustSignInWith(
                  title: "Sign in with Apple",
                  image: 'apple.png',
                ),
              ),
              fixheight,
              InkWell(
                splashColor: TextColor.greyTxtCol,
                onTap: () {
                  Get.to(() => SignInPage());
                },
                child: CustSignInWith(
                  title: "Sign in with Google",
                  image: 'google.png',
                  txtColor: ThemeColor.primeryColor1,
                ),
              ),
              fixheight,
              CustomText(
                text: 'or',
                color: TextColor.greyTxtCol,
                fontSize: 18,
                weight: FontWeight.bold,
              ),
              TextButton(
                onPressed: () {
                  Get.to(() => SubscriptionPage());
                },
                child: CustomText(
                  text: 'Create new account',
                  fontSize: 24.sp,
                  color: ThemeColor.secondaryolor2,
                  decoration: TextDecoration.underline,
                ),
              ),
              fixheight,
              TextButton(
                  onPressed: () {},
                  child: CustomText(
                    text: 'Privacy & Policy',
                    color: TextColor.greyTxtCol,
                    fontSize: 18.sp,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
