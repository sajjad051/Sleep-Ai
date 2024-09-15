import 'package:ai_sleep/Auth/Controler/forgot_controler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CustomRadioButton extends StatefulWidget {
  const CustomRadioButton({Key? key}) : super(key: key);

  @override
  _CustomRadioButtonState createState() => _CustomRadioButtonState();
}

class _CustomRadioButtonState extends State<CustomRadioButton> {
  PageController pageController = Get.put(PageController());
  int index = 1;

  BoxDecoration decoration() {
    return BoxDecoration(
      color: const Color(0xFF7D50FF),
      border: Border.all(width: 2, color: const Color(0xFF7D50FF)),
      borderRadius: const BorderRadius.all(Radius.circular(24.0)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: Container(
              height: 38.h,
              width: Get.width * .60 ,
              decoration: BoxDecoration(
                color: const Color(0xFF061339),
                borderRadius: const BorderRadius.all(Radius.circular(24.0)),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: const Color(0xFF061339).withOpacity(0.3),
                    blurRadius: 8,
                    offset: const Offset(4, 4),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Container(
                    height: 40.h,
                    width: Get.width * .30,
                    alignment: Alignment.center,
                    decoration: (index == 1) ? decoration() : null,
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: const BorderRadius.all(Radius.circular(24.0)),
                        highlightColor: Colors.transparent,
                        onTap: () {
                          setState(() {
                            index = 1;

                          });
                          pageController.previousPage( duration: Duration(seconds: 1), curve: Curves.easeInOut);
                        },
                        child:  Center(
                          child: Text(
                            "Week",
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 38.h,
                    width: Get.width *.30,
                    decoration: (index == 2) ? decoration() : null,
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: const BorderRadius.all(Radius.circular(24.0)),
                        highlightColor: Colors.transparent,
                        onTap: () {
                          setState(() {
                            index = 2;
                          });
                          pageController.animateToPage(1, duration: Duration(seconds: 1), curve: Curves.easeInOut);
                        },
                        child:  Center(
                          child: Text(
                            "Month",
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 8.h,
                width: 8.w,
                decoration: BoxDecoration(
                  color: (index == 1) ? const Color(0xFF7D50FF) : null,
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                height: 8.h,
                width: 8.w,
                decoration: BoxDecoration(
                  color: (index == 2) ? const Color(0xFF7D50FF) : null,
                  shape: BoxShape.circle,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
