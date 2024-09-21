import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class SRegularity extends StatefulWidget {
  const SRegularity({Key? key}) : super(key: key);

  @override
  State<SRegularity> createState() => _SleepRegularityState();
}

class _SleepRegularityState extends State<SRegularity> {
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
          Text("Sleep Regularity",style: TextStyle(fontSize: 16.sp, color: Colors.white, fontWeight: FontWeight.w700)),
           SizedBox(height: 20.h,),


          SizedBox(
            width : width,
            height: 296.h,
            child: Stack(
              children: [

                Container(
                  // color: Colors.blue,
                  padding: EdgeInsets.only(bottom: 20.h),
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
                    ],
                  ),
                ),

                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    padding: const EdgeInsets.only(left: 50, bottom: 10),
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
                                Text("Mon", style: dayStyle(),),
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
                                Text("Tue", style: dayStyle(),),
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
                                Text("Wed", style: dayStyle(),),
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
                                Text("Thu", style: dayStyle(),),
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
                                Text("Fri", style: dayStyle(),),
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
                                Text("Sat", style: dayStyle(),),
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

          const SizedBox(height: 20,),

        ],
      ),
    );
  }

  Row horaizantalLine(String name){
    return Row(
      children: [
        Container(
          height: 30,
          width: 50,
          alignment: Alignment.centerLeft,
          child: Text(name, style: const TextStyle(color: Colors.white38),),
        ),
        //SizedBox(width: 10,),
        Flexible(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: (((width - 30) / 6) - 20)/4),
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
        color: Colors.white60
    );
  }

  Container bar(double height, double value, double marginTop){
    return Container(
      margin: EdgeInsets.only(top: height * marginTop),
      width: 20,
      height: height * value,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(40.0),
          topLeft: Radius.circular(40.0),
          bottomLeft: Radius.circular(40.0),
          bottomRight: Radius.circular(40.0),
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
