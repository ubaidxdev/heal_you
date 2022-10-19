import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heal_you/Core/common_variabls/common_var.dart';
import 'package:heal_you/Core/common_widgets/custom_text.dart';
import 'package:heal_you/Core/my_colors.dart';

class ProfileRow extends StatelessWidget {
  const ProfileRow({
    Key? key,
  }) : super(key: key);

  String greeting() {
    var hour = DateTime.now().hour;
    if (hour < 12) {
      return 'Good Morning!👋';
    }
    if (hour < 17) {
      return 'Good Afternoon!👋';
    }
    return 'Good Evening!👋';
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //Greetings and Name
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: greeting(),
              color: TextColor.greyTxtCol,
              fontSize: 17.sp,
            ),
            SizedBox(
              height: 5.sp,
            ),
            CustomText(
              text: 'Ubaid Ullah',
              fontSize: 30.sp,
              weight: FontWeight.bold,
            )
          ],
        ),

        SizedBox(
          child: Row(children: [
            //Search Icon
            CircleAvatar(
              maxRadius: 27.r,
              backgroundColor: Colors.grey[300],
              child: CircleAvatar(
                backgroundColor: white,
                maxRadius: 26.r,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Icon(
                    Icons.search,
                    color: black,
                    size: 30.sp,
                  ),
                ),
              ),
            ),
            SizedBox(width: 10.w),
            //Profile Picture Avatar

            CircleAvatar(
              maxRadius: 30.r,
              // backgroundColor: ThemeColor.primeryColor1,
              backgroundImage: AssetImage('${imgPath}man.jpg'),
            ),
          ]),
        )
      ],
    );
  }
}
