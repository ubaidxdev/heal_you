import 'package:flutter/material.dart';
import 'package:fluid_bottom_nav_bar/fluid_bottom_nav_bar.dart';
import 'package:heal_you/Core/common_widgets/custom_text.dart';
import 'package:heal_you/Core/my_colors.dart';

class FlutterBottomBarView extends StatefulWidget {
  const FlutterBottomBarView({super.key});

  @override
  State<FlutterBottomBarView> createState() => _FlutterBottomBarViewState();
}

class _FlutterBottomBarViewState extends State<FlutterBottomBarView> {
  int pageIndex = 0;

  PageController pages = PageController();
  changeIndex({required int value}) {
    setState(() {
      pageIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Fluid Nav Bar Testing')),
      body: PageView(
        controller: pages,
        children: [
          Center(
            child: CustomText(
              text: 'Home 🏡',
              weight: FontWeight.bold,
              fontSize: 32,
            ),
          ),
          Center(
            child: CustomText(
              text: 'Profile 🏡',
              weight: FontWeight.bold,
              fontSize: 32,
            ),
          ),
          Center(
            child: CustomText(
              text: 'News 🏡',
              weight: FontWeight.bold,
              fontSize: 32,
            ),
          ),
          Center(
            child: CustomText(
              text: 'Settings 🏡',
              weight: FontWeight.bold,
              fontSize: 32,
            ),
          ),
        ],
      ),
      // bottomNavigationBar: FluidNavBar(
      //   defaultIndex: pageIndex,
      //   animationFactor: 0.7,
      //   style: const FluidNavBarStyle(
      //     iconUnselectedForegroundColor: Colors.grey,
      //     iconSelectedForegroundColor: Colors.white,
      //     iconBackgroundColor: Colors.deepOrangeAccent,
      //     barBackgroundColor: Colors.greenAccent,
      //   ),
      //   icons: [
      //     FluidNavBarIcon(icon: Icons.home_filled),
      //     FluidNavBarIcon(icon: Icons.person_pin),
      //     FluidNavBarIcon(icon: Icons.newspaper),
      //     FluidNavBarIcon(icon: Icons.settings),
      //   ],
      //   onChange: (val) {
      //     changeIndex(value: val);
      //     pages.jumpToPage(pageIndex);
      //   },
      // ),
    );
  }
}
