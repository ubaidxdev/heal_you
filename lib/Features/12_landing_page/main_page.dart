import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heal_you/Core/my_colors.dart';
import 'package:heal_you/Features/04_gender/gender.dart';
import 'package:heal_you/Features/06_weight/weight.dart';
import 'package:heal_you/Features/09_verifiation/verification.dart';
import 'package:heal_you/Features/10_change_password/change_password.dart';
import 'package:heal_you/Features/13_home/home.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  int current_index = 0;
  //  List<Widget> total_screen = [];
  var total_screen = [Home(), Verification(), WeightPage(), Gender()];

  @override
  void initstate() {
    total_screen;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: total_screen[current_index],
      //Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
          // elevation: 8,
          fixedColor: ThemeColor.primeryColor1,
          currentIndex: current_index,
          unselectedItemColor: Colors.grey[500],
          enableFeedback: true,
          showUnselectedLabels: true,
          backgroundColor: Colors.black26,
          iconSize: 30.sp,
          selectedFontSize: 18.0.sp,
          unselectedFontSize: 18.0.sp,
          items: const [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(
                Icons.home_rounded,
              ),
            ),
            BottomNavigationBarItem(
              label: "Discover",
              icon: Icon(
                Icons.explore_rounded,
              ),
            ),
            BottomNavigationBarItem(
              label: "Activity",
              icon: Icon(
                Icons.bar_chart_rounded,
              ),
            ),
            BottomNavigationBarItem(
              label: "Settings",
              icon: Icon(
                Icons.settings,
              ),
            ),
          ],
          onTap: (index) {
            setState(() {
              current_index = index;
            });
          }),
    );
  }
}
