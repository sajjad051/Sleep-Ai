import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/usecase/app_color.dart';

class SleepDaysName extends StatelessWidget {

 final String day;
 final VoidCallback onPressed;
   SleepDaysName({super.key , required this.day, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        onPressed;
      },
      child: Container(
        width: 50.w,
        height: 50.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          //  border: Border.all(color: Color(0xFF848BBD)),
          color: Color(0xFF020825).withOpacity(.6),
        ),
        child: Center(
          child: Text(day,
            style: TextStyle(color: AppColor.editTextColor),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
