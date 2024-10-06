import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:numberpicker/numberpicker.dart';

class NumberPage extends StatefulWidget {
  const NumberPage({super.key});

  @override
  State<NumberPage> createState() => _NumberPageState();
}

class _NumberPageState extends State<NumberPage> {
  var hour = 0;
  var minute = 0;
  //var timeFormat = "AM";

  @override
  Widget build(BuildContext context) {
    return

         Column(
         // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text(
            //     "Pick Your Time! ${hour.toString().padLeft(2, '0')}:${minute.toString().padLeft(2, "0")} ",
            //     style:
            //     const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            Container(
              padding:  EdgeInsets.symmetric( vertical: 20.h),
              //color: Colors.white,
              width: 152.w,
              height: 243.h,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(10.r)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  NumberPicker(
                    minValue: 0,
                    maxValue: 23,
                    value: hour,
                    zeroPad: true,
                    infiniteLoop: true,
                    itemWidth: 60.w,
                    itemHeight: 60.h,
                    onChanged: (value) {
                      setState(() {
                        hour = value;
                      });
                    },
                    textStyle:
                    GoogleFonts.inter(color:  Color(0xFF020825).withOpacity(.3), fontSize: 40.sp, fontWeight: FontWeight.w500),
                    selectedTextStyle:
                    GoogleFonts.inter(color: Color(0xFF020825), fontSize: 40.sp, fontWeight: FontWeight.w500),
                  ),
                  //Three Dot
                  Column(
                   // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 17.h,),
                      Text(':', style: GoogleFonts.inter(color: Color(0xFF020825).withOpacity(.3),fontSize: 30.sp,fontWeight: FontWeight.bold),),
                   // Icon(Icons.more_vert, color: Color(0xFF020825).withOpacity(.3),),
                      SizedBox(height: 15.h,),
                      Text(':', style: GoogleFonts.inter(color: Color(0xFF020825),fontSize: 30.sp,fontWeight: FontWeight.bold),),
                      SizedBox(height: 16.h,),
                      Text(':', style: GoogleFonts.inter(color: Color(0xFF020825).withOpacity(.3),fontSize: 30.sp,fontWeight: FontWeight.bold),),
                    ],
                  ),
                  NumberPicker(
                    minValue: 0,
                    maxValue: 59,
                    value: minute,
                    zeroPad: true,
                    infiniteLoop: true,
                    itemWidth: 60.w,
                    itemHeight: 60.h,
                    onChanged: (value) {
                      setState(() {
                        minute = value;
                      });
                    },
                    textStyle:
                    GoogleFonts.inter(color:  Color(0xFF020825).withOpacity(.3), fontSize: 40.sp, fontWeight: FontWeight.w500),
                    selectedTextStyle:
                    GoogleFonts.inter(color: Color(0xFF020825), fontSize: 40.sp, fontWeight: FontWeight.w500),
                  ),

                ],
              ),
            )
          ],
        );


  }
}