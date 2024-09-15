import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Import flutter_screenutil
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';
import 'Home/Widget/navigation_controller.dart';
import 'Route/Routes.dart';

void main() {
  Get.lazyPut<NavigationController>(() => NavigationController(),fenix:true);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926), // Base size for responsiveness (width, height)
      minTextAdapt: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          initialRoute: Routes.homePageView,
          getPages: AppPage.routes,
        );
      },
    );
  }
}
