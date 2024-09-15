import 'package:ai_sleep/Home/Widget/custom_bottom_buttom.dart';
import 'package:ai_sleep/Home/home_page/home_screen.dart';
import 'package:ai_sleep/Profile/profile_screen.dart';
import 'package:ai_sleep/Sleep/sleep_1.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Home/Widget/navigation_controller.dart';
import '../Records/records_screen.dart';
import '../Sleep/sleep_2.dart';
import '../Sleep/sleep_3.dart';
import '../Statistics/statistics_Screen.dart';

class HomePageView extends StatefulWidget {
  HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  late NavigationController navController;

  @override
  void initState() {
    super.initState();
    navController = Get.find<NavigationController>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomButtom(),
      backgroundColor: Colors.transparent,
      body: Obx(() {
        return PageView(
          controller: navController.pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            HomeScreen(),
            navController.clickStartTrack.value == 2
                ? Sleep3()
                : navController.clickStartTrack.value == 1
                    ? Sleep2()
                    : Sleep1(),
            RecordsScreen(),
            StatisticsScreen(),
            ProfileScreen(),
          ],
        );
      }),
    );
  }
}
