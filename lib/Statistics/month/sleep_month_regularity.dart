import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';


class SleepMonthRegularity extends StatefulWidget {
  const SleepMonthRegularity({Key? key}) : super(key: key);

  @override
  State<SleepMonthRegularity> createState() => _SleepRegularityState();
}

class _SleepRegularityState extends State<SleepMonthRegularity> {
  late double width;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width-40;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      decoration: BoxDecoration(
          color: Color(0xFF061238),
          borderRadius: BorderRadius.circular(8)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Sleep Regularity",style: GoogleFonts.inter(fontSize: 14.sp, color: Colors.white, fontWeight: FontWeight.w500)),
          SizedBox(height: 20.h,),


          SizedBox(
            width : width,
            height: 286.h,
            child: Stack(
              children: [

                Container(
                  // color: Colors.blue,
                  padding: EdgeInsets.only(bottom: 20),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      horaizantalLine("10:00"),
                      horaizantalLine("08:00"),
                      horaizantalLine("06:00"),
                      horaizantalLine("04:00"),
                      horaizantalLine("02:00"),
                      horaizantalLine("12:00"),
                      horaizantalLine("10:00"),
                      horaizantalLine("08:00"),
                      // horaizantalLine("09:00"),
                    ],
                  ),
                ),

                Container(
                  padding:  EdgeInsets.only(left: 50.w, top: 15.h, bottom: 35.h),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            bar((width * 0.6) - 30, 0.5, 0.2),
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            bar((width * 0.6) - 30, 0.6, 0.2),
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            bar((width * 0.6) - 30, 0.6, 0.15),
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            bar((width * 0.6) - 30, .7, 0.1),
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            bar((width * 0.6) - 30, 0.4, 0.3),
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            bar((width * 0.6) - 30, 0.2, 0.5),
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            bar((width * 0.6) - 30, 0.8, 0.1),
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            bar((width * 0.6) - 30, 0.5, 0.2),
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            bar((width * 0.6) - 30, 0.7, 0.3),
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            bar((width * 0.6) - 30, 0.6, 0.15),
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            bar((width * 0.6) - 30, 1.0, 0.0),
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            bar((width * 0.6) - 30, 0.4, 0.3),
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            bar((width * 0.6) - 30, 0.2, 0.5),
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            bar((width * 0.6) - 30, 0.8, 0.1),
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            bar((width * 0.6) - 30, 0.5, 0.2),
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            bar((width * 0.6) - 30, 0.7, 0.3),
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            bar((width * 0.6) - 30, 0.6, 0.15),
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            bar((width * 0.6) - 30, 1.0, 0.0),
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            bar((width * 0.6) - 30, 0.4, 0.3),
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            bar((width * 0.6) - 30, 0.2, 0.5),
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            bar((width * 0.6) - 30, 0.8, 0.1),
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            bar((width * 0.6) - 30, 0.5, 0.2),
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            bar((width * 0.6) - 30, 0.7, 0.3),
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            bar((width * 0.6) - 30, 0.6, 0.15),
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            bar((width * 0.6) - 30, 1.0, 0.0),
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            bar((width * 0.6) - 30, 0.4, 0.3),
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            bar((width * 0.6) - 30, 0.2, 0.5),
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            bar((width * 0.6) - 30, 0.8, 0.1),
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            bar((width * 0.6) - 30, 0.4, 0.3),
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            bar((width * 0.6) - 30, 0.2, 0.5),
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            bar((width * 0.6) - 30, 0.8, 0.1),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    padding:  EdgeInsets.only(left: 50.w, bottom: 10.h),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Flexible(
                          flex: 1,
                          child: SizedBox(
                            height: 20,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("1", style: dayStyle(),),
                              ],
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: SizedBox(
                            height: 20,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("5", style: dayStyle(),),
                              ],
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: SizedBox(
                            height: 20,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("10", style: dayStyle(),),
                              ],
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            height: 20,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("15", style: dayStyle(),),
                              ],
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            height: 20,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("20", style: dayStyle(),),
                              ],
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            height: 20,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("25", style: dayStyle(),),
                              ],
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            height: 20,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("30", style: dayStyle(),),
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
          width: 50.w,
          alignment: Alignment.centerLeft,
          child: Text(name, style: GoogleFonts.inter(color: Colors.white38),),
        ),
        //SizedBox(width: 10,),
        Flexible(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: (((width - 30) / 6) - 20)/4),
            color: Colors.white12,
            height: 1.h,
          ),
        )
      ],
    );
  }

  TextStyle dayStyle(){
    return GoogleFonts.inter(
        fontSize: 12.sp,
        color: Colors.white60
    );
  }

  Container bar(double height, double value, double marginTop){
    return Container(
      margin: EdgeInsets.only(top: height * marginTop),
      width: 4.w,
      height: height * value,
      decoration:  BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(40.0).r,
          topLeft: Radius.circular(40.0).r,
          bottomLeft: Radius.circular(40.0).r,
          bottomRight: Radius.circular(40.0).r,
        ),

        gradient: LinearGradient(
            colors: [
              Color(0xFF086D3D),
              Color(0xFF1AB4BE),
            ],
            begin: FractionalOffset(0.0, 1.0),
            end: FractionalOffset(1.0, 0.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp),
      ),
    );
  }
}
