import 'package:get/get_navigation/src/routes/get_route.dart';

import '../WelcomeScreen/welcome_page_1.dart';
import '../WelcomeScreen/welcome_page_2.dart';
import '../WelcomeScreen/welcome_page_3.dart';
import '../WelcomeScreen/welcome_page_4.dart';
import '../login.dart';


abstract class Routes{
  static const login = '/login';
  static const welcomePage1 = '/welcomePage1';
  static const welcomePage2 = '/welcomePage2';
  static const welcomePage3 = '/welcomePage3';
  static const welcomePage4 = '/welcomePage4';
}

abstract class AppPage {
  static final routes = [
     GetPage(name: Routes.login, page: ()=> LoginPage (),),
     GetPage(name: Routes.welcomePage2, page: ()=> WelcomePage2 (),),
     GetPage(name: Routes.welcomePage3, page: ()=> WelcomePage3 (),),
     GetPage(name: Routes.welcomePage4, page: ()=> WelcomePage4 (),),

  ];
}