import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:heal_you/Core/common_widgets/custom_text.dart';
import 'package:heal_you/Features/11_need_help/need_help.dart';

class NeedHelp extends StatelessWidget {
  const NeedHelp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Get.to(() => NeedHelpPage());
      },
      child: CustomText(
        text: 'Need Help?',
        color: Colors.grey,
        fontSize: 16.sp,
        weight: FontWeight.w600,
      ),
    );
  }
}
