import 'package:flutter/material.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomDateTimeline extends StatefulWidget {
  @override
  _CustomDateTimelineState createState() => _CustomDateTimelineState();
}

class _CustomDateTimelineState extends State<CustomDateTimeline> {
  DateTime _focusDate = DateTime.now(); // Initialize with a valid date

  @override
  Widget build(BuildContext context) {
    return  EasyInfiniteDateTimeLine(
        selectionMode: const SelectionMode.autoCenter(),
        firstDate: DateTime(2024),
        focusDate: _focusDate,
        showTimelineHeader: false,
        lastDate: DateTime(2026, 12, 31),
        onDateChange: (selectedDate) {
          setState(() {
            _focusDate = selectedDate; // Update with selected date
          });
        },
        dayProps:  EasyDayProps(
          width: 50.w,
          height: 59.h,
          borderColor: Color(0xFF7D50FF)
        ),
        itemBuilder: (
            BuildContext context,
            DateTime date,
            bool isSelected,
            VoidCallback onTap,
            ) {
          return Column(
            children: [
              InkResponse(
                splashColor: Colors.transparent,
                onTap: onTap,
                 child: Container(
                width: 50.w,
                height: 50.h,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: isSelected ? Color(0xFF7D50FF) : Colors.transparent, // Border color
                    width: 1.0.w, // Border width
                  ),
                ),child:
                CircleAvatar(
                  backgroundColor: isSelected ? Color(0xFFFFFFFF).withOpacity(.20) : Colors.transparent, // Define fillColor
                  //radius: 15.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Text(
                          EasyDateFormatter.shortDayName(date, "en_US"),
                          style: GoogleFonts.inter(
                            color: Color(0xFF848BBD),
                            fontSize: 11.sp, fontWeight: FontWeight.w400
                          ),
                        ),
                      ),

                      Flexible(
                        child: Text(
                          date.day.toString(),
                          style: TextStyle(
                            color: isSelected ? Colors.white : Color(0xFFFFFFFF),
                              fontSize: 16.sp, fontWeight: FontWeight.w500
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              )),
              SizedBox(height: 3.h,),
              Center(
                child: SvgPicture.asset(
                  "assets/sleep/Ellipse.svg",
                  height: 6.h,
                  width: 6.w,
                 color: isSelected ? Color(0xFF7D50FF) : Colors.transparent,
                ),
              ),
            ],
          );
        },
      );

  }
}
