import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heal_you/Core/common_widgets/custom_text.dart';
import 'package:heal_you/Core/my_colors.dart';
import 'package:heal_you/Features/01_welcom_page/welcome_page.dart';
import 'package:heal_you/Features/07_sign_in/sigin_in.dart';
import 'package:heal_you/Features/09_verifiation/verification.dart';
import 'package:heal_you/Features/10_change_password/change_password.dart';
import 'package:heal_you/Features/12_landing_page/main_page.dart';

void main() async {
  runApp(const MyApp());
  await ScreenUtil.ensureScreenSize();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 710),
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.orange,
            textTheme:
                GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
          ),
          home: LandingScreen(),
        );
      },
    );
  }
}

class TimePickerPractice extends StatefulWidget {
  const TimePickerPractice({super.key});

  @override
  State<TimePickerPractice> createState() => _TimePickerPracticeState();
}

class _TimePickerPracticeState extends State<TimePickerPractice> {
  var time = TimeOfDay(hour: 00, minute: 00);
  void _showTimePicker() {
    showTimePicker(context: context, initialTime: time).then((value) {
      setState(() {
        time = value!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //Display Selected time
            CustomText(
              text: time.format(context).toString(),
              color: black,
              fontSize: 30,
            ),
            //Button
            MaterialButton(
              onPressed: _showTimePicker,
              // ignore: sort_child_properties_last
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: CustomText(
                  text: 'Pick TIme',
                  fontSize: 30,
                  color: white,
                ),
              ),
              color: Colors.orange,
            ),
          ],
        ),
      ),
    );
  }
}
