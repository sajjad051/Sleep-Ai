// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// import '../Home/home_page1.dart';
//
// class TabBarMusic extends StatefulWidget {
//   const TabBarMusic({super.key});
//
//   @override
//   _TabBarMusicState createState() => _TabBarMusicState();
// }
//
// class _TabBarMusicState extends State<TabBarMusic> {
//   int _selectedIndex = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       initialIndex: _selectedIndex,
//       length: 5,
//       child: Scaffold(
//         backgroundColor: Color(0xFF020825),
//         appBar: PreferredSize(
//           preferredSize: Size.fromHeight(80.0.h),
//           child: AppBar(
//             iconTheme: IconThemeData(color: Color(0xCCFFFFFF)),
//             backgroundColor: Color(0xFF020825),
//             title: Text(
//               "Music",
//               style: TextStyle(
//                 color: Color(0xCCFFFFFF),
//                 fontSize: 16.sp,
//                 fontWeight: FontWeight.w700,
//               ),
//             ),
//             bottom: TabBar(
//               unselectedLabelColor: Color(0xFF848BBD),
//               tabAlignment: TabAlignment.start,
//               padding: EdgeInsets.only(left: 15.w),
//               labelPadding: EdgeInsets.symmetric(horizontal: 12.w),
//               dividerColor: Colors.transparent,
//              // indicatorSize: TabBarIndicatorSize.label,
//               indicatorColor: Colors.transparent,
//               labelColor: Color(0xFF7D50FF),
//               isScrollable: true,
//               onTap: (index) {
//                 setState(() {
//                   _selectedIndex = index;
//                   // Update selected tab index
//                 });
//               },
//               tabs: <Widget>[
//                 _buildTab("Favorite", 0),
//                 _buildTab("Quick Sleep", 1),
//                 _buildTab("Meditation", 2),
//                 _buildTab("Nature", 3),
//                 _buildTab("Other", 4),
//               ],
//             ),
//           ),
//         ),
//         body: const TabBarView(
//           children: <Widget>[
//             Center(child: HomePage1()),
//             Center(child: HomePage1()),
//             Center(child: HomePage1()),
//             Center(child: HomePage1()),
//             Center(child: HomePage1()),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _buildTab(String title, int index) {
//     return Column(
//       children: [
//         Text(
//           title,
//           style: GoogleFonts.inter(
//             fontSize: 14.sp,
//             fontWeight: FontWeight.w500,
//           ),
//         ),
//         SizedBox(height: 3.h),
//         Center(
//           child: SvgPicture.asset(
//             "assets/sleep/Ellipse.svg",
//             height: 6.h,
//             width: 6.w,
//             color: _selectedIndex == index || _selectedIndex == index
//                 ? Color(0xFF7D50FF)
//                 : Colors.transparent, // Change color based on selection
//           ),
//         ),
//       ],
//     );
//   }
// }



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
          preferredSize: Size.fromHeight(80.0.h),
          child: AppBar(
            iconTheme: IconThemeData(color: Color(0xCCFFFFFF)),
            backgroundColor: Color(0xFF020825),
            title: Text(
              "Music",
              style: TextStyle(
                color: Color(0xCCFFFFFF),
                fontSize: 16.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
            bottom: TabBar(
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
                Column(
                  children: [
                    Text(
                      "Favorite",
                      style: GoogleFonts.inter(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                  ],
                ),
                Column(
                  children: [
                    Text(
                      "Quick Sleep",
                      style: GoogleFonts.inter(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                  ],
                ),
                Column(
                  children: [
                    Text(
                      "Meditation",
                      style: GoogleFonts.inter(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                  ],
                ),
                Column(
                  children: [
                    Text(
                      "Nature",
                      style: GoogleFonts.inter(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "Nature",
                      style: GoogleFonts.inter(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                  ],
                ),
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
