import 'package:ai_sleep/Auth/Controler/forgot_controler.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CustomRadioButton extends StatefulWidget {
  const CustomRadioButton({Key? key}) : super(key: key);

  @override
  _CustomRadioButtonState createState() => _CustomRadioButtonState();
}

class _CustomRadioButtonState extends State<CustomRadioButton> {
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
      width: Get.width,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 38,
              width: Get.width *5,
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
                    height: 40,
                    width: 139,
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
                        },
                        child: const Center(
                          child: Text(
                            "Week",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 38,
                    width: 139,
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
                        },
                        child: const Center(
                          child: Text(
                            "Month",
                            style: TextStyle(
                              fontSize: 14,
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
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 8,
                width: 8,
                decoration: BoxDecoration(
                  color: (index == 1) ? const Color(0xFF7D50FF) : null,
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                height: 8,
                width: 8,
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
