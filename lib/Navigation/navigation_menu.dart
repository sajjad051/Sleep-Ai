import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final NavigationControler navigationControler =
    Get.put(NavigationControler());

    return Scaffold(
      bottomNavigationBar: Obx(() {
        return ClipRRect(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(15), topLeft: Radius.circular(15)),
          child: NavigationBar(
            height: 80,
            elevation: 0,
            selectedIndex: navigationControler.selectedIndex.value,
            onDestinationSelected: (index) =>
            navigationControler.selectedIndex.value = index,
         //   backgroundColor: Colors.purple,
            destinations: [
              NavigationDestination(
                icon: SvgPicture.asset(
                  "assets/sleep/Home.svg",
                  height: 24,
                  width: 24,
                  color: Colors.black,
                ),
                label: '', // Empty string for no label
              ),
              NavigationDestination(
                icon: SvgPicture.asset(
                  "assets/sleep/moon.svg",
                  height: 24,
                  width: 24,
                ),
                label: '', // Empty string for no label
              ),
              NavigationDestination(
                icon: SvgPicture.asset(
                  "assets/sleep/Home.svg",
                  height: 24,
                  width: 24,
                ),
                label: '', // Empty string for no label
              ),
              NavigationDestination(
                icon: SvgPicture.asset(
                  "assets/sleep/Home.svg",
                  height: 24,
                  width: 24,
                ),
                label: '', // Empty string for no label
              ),
              NavigationDestination(
                icon: SvgPicture.asset(
                  "assets/sleep/Home.svg",
                  height: 24,
                  width: 24,
                ),
                label: '', // Empty string for no label
              ),
            ],
          ),
        );
      }),
      body: Obx(() => navigationControler.screens[
      navigationControler.selectedIndex.value]),
    );
  }
}

class NavigationControler extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final screens = [
    Container(color: Colors.green),
    Container(color: Colors.yellow),
  ];
}
