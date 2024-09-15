import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';


class EnvironmentNoise extends StatelessWidget {
  EnvironmentNoise({Key? key}) : super(key: key);

  late double width;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width-40;
    return Container(
      padding:  EdgeInsets.symmetric(vertical: 30.w, horizontal: 20.h),
      decoration: BoxDecoration(
          color: Color(0xFF061238),
          borderRadius: BorderRadius.circular(8)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Environment noise",style: GoogleFonts.inter(fontSize: 16.sp, color: Colors.white, fontWeight: FontWeight.w700)),
           SizedBox(height: 20.h,),


          SizedBox(
            width : width,
            height: width * 0.6,
            child: Stack(
              children: [

                Container(
                  // color: Colors.blue,
                  padding: EdgeInsets.only(bottom: 20.h),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      horaizantalLine("50"),
                      horaizantalLine("40"),
                      horaizantalLine("30"),
                      horaizantalLine("20"),
                      horaizantalLine("10"),
                      horaizantalLine("0")
                    ],
                  ),
                ),

                Container(
                  padding: EdgeInsets.only(left: 40.w, top: 15.h, bottom: 35.h),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Flexible(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            bar((width * 0.6) - 30, 0.5, Color(0xFFFA5C8C), Color(0xFFBF1655)),
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            bar((width * 0.6) - 30, 0.7,Color(0xFF6E1DD6),Color(0xFF061A7A)),
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            bar((width * 0.6) - 30, 0.6, Color(0xFFA2CB25), Color(0xFF93BF0E)),
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            bar((width * 0.6) - 30, 1.0,Color(0xFF6E1DD6),Color(0xFF061A7A)),
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            bar((width * 0.6) - 30, 0.4,Color(0xFF6E1DD6),Color(0xFF061A7A)),
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            bar((width * 0.6) - 30, 0.2,Color(0xFF6E1DD6),Color(0xFF061A7A)),
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            bar((width * 0.6) - 30, 0.8,Color(0xFF6E1DD6),Color(0xFF061A7A)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),


                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    padding:  EdgeInsets.only(left: 30.w, bottom: 10.h),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Flexible(
                          flex: 1,
                          child: SizedBox(
                            height: 20.h,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Mon", style: dayStyle(),),
                              ],
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: SizedBox(
                            height: 20.h,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Tue", style: dayStyle(),),
                              ],
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: SizedBox(
                            height: 20.h,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Wed", style: dayStyle(),),
                              ],
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            height: 20.h,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Thu", style: dayStyle(),),
                              ],
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            height: 20.h,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Fri", style: dayStyle(),),
                              ],
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            height: 20.h,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Sat", style: dayStyle(),),
                              ],
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            height: 20.h,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Sun", style: dayStyle(),),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )


              ],
            ),
          ),


           SizedBox(height: 20.h,),

        ],
      ),
    );
  }

  Row horaizantalLine(String name){
    return Row(
      children: [
        Container(
          height: 30.h,
          width: 30.w,
          alignment: Alignment.centerLeft,
          child: Text(name, style: const TextStyle(color: Colors.white38),),
        ),
        //SizedBox(width: 10,),
        Flexible(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: (((width - 30) / 7) - 20)/4),
            color: Colors.white12,
            height: 1,
          ),
        )
      ],
    );
  }

  TextStyle dayStyle(){
    return TextStyle(
        fontSize: 12.sp,
        color: Colors.white70
    );
  }

  Container bar(double height, double value, Color color1, Color color2){
    return Container(
      width: 20.w,
      height: height * value,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(40.0),
          topLeft: Radius.circular(40.0),
        ),

        gradient: LinearGradient(
            colors: [
              color1,
              color2
            ],
            begin: const FractionalOffset(0.0, 1.0),
            end: const FractionalOffset(1.0, 0.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp),
      ),
    );
  }
}









