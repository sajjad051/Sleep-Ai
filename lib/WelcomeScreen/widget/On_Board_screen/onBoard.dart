import 'package:ai_sleep/WelcomeScreen/welcome_page_1.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Indicator.dart';


import '../../welcome_page_2.dart';
import '../../welcome_page_3.dart';
import '../../welcome_page_4.dart';
import 'onBoardControler.dart';



class OnBoard extends StatefulWidget {
  const OnBoard({super.key});

  @override
  State<OnBoard> createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> with TickerProviderStateMixin {
  int totalPage = 4;
  late PageController _pageController;
  late AnimationController _progressController;
   OnBoardController _onBoardController = Get.put(OnBoardController());

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
    _pageController.addListener(() {
      setState(() {});
    });
    _progressController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            onPageChanged: (int position) {
              if (_onBoardController.pageIndex.value != position) {
                _onBoardController.updateIndex(position);
              }
            },
            itemCount: totalPage,
            controller: _pageController,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) => viewPage(index),
          ),
          Container(
            margin: EdgeInsets.only(top: height * 0.68),
            child: Obx(() {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...List.generate(
                      totalPage,
                          (indicatorIndex) => Indicator(
                          isActive: indicatorIndex ==
                              _onBoardController.pageIndex.value
                              ? true
                              : false)),
                ],
              );
            }),
          ),
        ],
      ),
    );
  }

  Widget viewPage(int position) {
    if (position == 0) {
      return const WelcomePage1();
    } else if (position == 1) {
      return const WelcomePage2();
    } else if (position == 2) {
      return const WelcomePage3();
    } else {
      return const WelcomePage4();
    }
  }
}
