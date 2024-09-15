import 'package:ai_sleep/Home/home_page1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
              isScrollable: true,
              tabs: <Widget>[
                Text("Favorite",style: GoogleFonts.inter(
                  color: Color(0xFF848BBD),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),),
                Text("Quick Sleep",style: GoogleFonts.inter(
                  color: Color(0xFF848BBD),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),),
                Text("Meditation",style: GoogleFonts.inter(
                  color: Color(0xFF848BBD),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),),
                Text("Nature",style: GoogleFonts.inter(
                  color: Color(0xFF848BBD),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),),
                Text("Nature",style: GoogleFonts.inter(
                  color: Color(0xFF848BBD),
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
              child: Text("It's sunny here"),
            ),
            Center(
              child: Text("It's rainy here"),
            ),
            Center(
              child: Text("It's sunny here"),
            ),
          ],
        ),
      ),
    );
  }
}