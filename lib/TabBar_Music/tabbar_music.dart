import 'package:ai_sleep/Home/home_page1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class TabBarMusic extends StatelessWidget {
  const TabBarMusic({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 5,
      child: Scaffold(
        backgroundColor: Color(0xFF020825),
        appBar: PreferredSize(
          preferredSize:  Size.fromHeight(80.0.h),
          child: AppBar(
            iconTheme: IconThemeData(color: Color(0xCCFFFFFF)),
            backgroundColor: Color(0xFF020825),
            title:  Text(
              "Music",
              style: TextStyle(
                color: Color(0xCCFFFFFF),
                fontSize: 16.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
            bottom:  TabBar(
              unselectedLabelColor: Color(0xFF848BBD),
              tabAlignment: TabAlignment.start,
              padding: EdgeInsets.only(left: 15.w),
              labelPadding: EdgeInsets.symmetric(horizontal: 12.w),
              dividerColor: Colors.transparent,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: Color(0xFF7D50FF),
              labelColor: Color(0xFF7D50FF),
              isScrollable: true,
              tabs: <Widget>[
                Text("Favorite",style: GoogleFonts.inter(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),),
                Text("Quick Sleep",style: GoogleFonts.inter(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),),
                Text("Meditation",style: GoogleFonts.inter(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),),
                Text("Nature",style: GoogleFonts.inter(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),),
                Text("Nature",style: GoogleFonts.inter(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),),
              ],
            ),
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            Center(
              child: HomePage1(),
            ),
            Center(
              child: HomePage1(),
            ),
            Center(
              child: HomePage1(),
            ),
            Center(
              child: HomePage1(),
            ),
            Center(
              child: HomePage1(),
            ),
          ],
        ),
      ),
    );
  }
}

