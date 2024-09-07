import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../Route/Routes.dart';

class CustomBottomButtom extends StatelessWidget {
   CustomBottomButtom({super.key});

  @override

  bool isActive = false ;
   bool isActives = false ;
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      width: Get.width * .95,
      //padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: const Color(0xFF020825),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
            //  alignment: Alignment.topRight,
              children: [
               // SvgPicture.asset('assets/sleep/ic_star.svg'),
                Stack(
                  //alignment: Alignment.center,
                  children: [
                    Positioned.fill(
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: isActives ? Color(0xFFF5E14A).withOpacity(.3) : Colors.transparent,
                              spreadRadius: 4,
                              blurRadius: 30,
                              offset: const Offset(0, 2), // Adjust the shadow position as needed
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Get.toNamed(Routes.homeScreen);
                      },
                      //isActive?'assets/sleep/ic_home_active.svg':
                       child: isActives ?
                       Padding(
                         padding: const EdgeInsets.only(bottom: 8),
                         child: SvgPicture.asset(
                           "assets/sleep/homeGs.svg",
                           // fit: BoxFit.cover,
                           height: 38,
                           width: 38,
                         ),
                       ):
                       Padding(
                         padding: const EdgeInsets.only(top: 8.0),
                         child: SvgPicture.asset(
                          "assets/sleep/Home.svg",
                          // fit: BoxFit.cover,
                          height: 24,
                          width: 24,
                                                   ),
                       ),
                    ),
                  ]

                                ),
              ],
            ),
            Stack(
              //  alignment: Alignment.topRight,
              children: [
                // SvgPicture.asset('assets/sleep/ic_star.svg'),
                Stack(
                  //alignment: Alignment.center,
                    children: [
                      Positioned.fill(
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: isActives ? Color(0xFF7EFAFF).withOpacity(.3) : Colors.transparent,
                                spreadRadius: 4,
                                blurRadius: 30,
                                offset: const Offset(0, 2), // Adjust the shadow position as needed
                              ),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Get.toNamed(Routes.sleep1);
                        },
                        //isActive?'assets/sleep/ic_home_active.svg':
                        child: isActives ?
                        Padding(
                          padding: const EdgeInsets.only(bottom: 12),
                          child: SvgPicture.asset(
                            "assets/sleep/moon_star.svg",
                            // fit: BoxFit.cover,
                            height: 30,
                            width: 30,
                          ),
                        ):
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: SvgPicture.asset(
                            "assets/sleep/moon.svg",
                            // fit: BoxFit.cover,
                            height: 24,
                            width: 24,
                          ),
                        ),
                      ),
                    ]

                ),
              ],
            ),
            Stack(
              //  alignment: Alignment.topRight,
              children: [
                // SvgPicture.asset('assets/sleep/ic_star.svg'),
                Stack(
                  //alignment: Alignment.center,
                    children: [
                      Positioned.fill(
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: isActives ? Color(0xFF7EFAFF).withOpacity(.3) : Colors.transparent,
                                spreadRadius: 4,
                                blurRadius: 30,
                                offset: const Offset(0, 2), // Adjust the shadow position as needed
                              ),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Get.toNamed(Routes.records);
                        },
                        //isActive?'assets/sleep/ic_home_active.svg':
                        child: isActives ?
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: SvgPicture.asset(
                            "assets/sleep/record_star.svg",
                            // fit: BoxFit.cover,
                            height: 40,
                            width: 40,
                          ),
                        ):
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: SvgPicture.asset(
                            "assets/sleep/records.svg",
                            // fit: BoxFit.cover,
                            height: 24,
                            width: 24,
                          ),
                        ),
                      ),
                    ]

                ),
              ],
            ),
            Stack(
              //  alignment: Alignment.topRight,
              children: [
                // SvgPicture.asset('assets/sleep/ic_star.svg'),
                Stack(
                  //alignment: Alignment.center,
                    children: [
                      Positioned.fill(
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: isActives ? Color(0xFF7EFAFF).withOpacity(.3) : Colors.transparent,
                                spreadRadius: 4,
                                blurRadius: 30,
                                offset: const Offset(0, 2), // Adjust the shadow position as needed
                              ),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Get.toNamed(Routes.statistics);
                        },
                        //isActive?'assets/sleep/ic_home_active.svg':
                        child: isActives ?
                        Padding(
                          padding: const EdgeInsets.only(top: 4),
                          child: SvgPicture.asset(
                            "assets/sleep/Statictis_star.svg",
                            // fit: BoxFit.cover,
                            height: 36,
                            width: 36,
                          ),
                        ):
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: SvgPicture.asset(
                            "assets/sleep/statistics.svg",
                            // fit: BoxFit.cover,
                            height: 24,
                            width: 24,
                          ),
                        ),
                      ),
                    ]

                ),
              ],
            ),
            Stack(
              //  alignment: Alignment.topRight,
              children: [
                // SvgPicture.asset('assets/sleep/ic_star.svg'),
                Stack(
                  //alignment: Alignment.center,
                    children: [
                      Positioned.fill(
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: isActive ? Color(0xFF7EFAFF).withOpacity(.3) : Colors.transparent,
                                spreadRadius: 4,
                                blurRadius: 30,
                                offset: const Offset(0, 2), // Adjust the shadow position as needed
                              ),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Get.toNamed(Routes.profile);
                        },
                        //isActive?'assets/sleep/ic_home_active.svg':
                        child: isActive ?
                        Padding(
                          padding: const EdgeInsets.only(top: 0),
                          child: SvgPicture.asset(
                            "assets/sleep/profile_star.svg",
                            // fit: BoxFit.cover,
                            height: 36,
                            width: 36,
                          ),
                        ):
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: SvgPicture.asset(
                            "assets/sleep/profile.svg",
                            // fit: BoxFit.cover,
                            height: 24,
                            width: 24,
                          ),
                        ),
                      ),
                    ]

                ),
              ],
            ),
          ],
        ),
      ), );

  }
}

