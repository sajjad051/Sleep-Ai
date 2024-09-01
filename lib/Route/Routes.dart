import 'package:ai_sleep/Auth/Forgot/forgot_password.dart';
import 'package:ai_sleep/Auth/Forgot/reset_password.dart';
import 'package:ai_sleep/Auth/Forgot/verification_code.dart';
import 'package:ai_sleep/Auth/Sign_in/Screen/Sign_in_screen.dart';
import 'package:ai_sleep/Auth/Sign_up/Screen/Sign_up_screen.dart';
import 'package:ai_sleep/Auth/welcome_auth_page.dart';
import 'package:ai_sleep/Home/dialog.dart';
import 'package:ai_sleep/Home/home_page1.dart';
import 'package:ai_sleep/Sleep/sleep_1.dart';
import 'package:ai_sleep/WelcomeScreen/widget/On_Board_screen/onBoard.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../Sleep/sleep_2.dart';
import '../Sleep/sleep_3.dart';
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
  static const welcomeAuthPage = '/welcomeAuthPage';
  static const signIn = '/signIn';
  static const signUp = '/signUp';
  static const forgotPage = '/forgotPage';
  static const verificationCode = '/verificationCode';
  static const resetPassword = '/resetPassword';
  static const sleep1 = '/sleep1';
  static const sleep2 = '/sleep2';
  static const onBoard = '/onBoard';
  static const sleep3 = '/sleep3';
  static const home1 = '/home1';
  static const dialog = '/dialog';

}

abstract class AppPage {
  static final routes = [
     GetPage(name: Routes.login, page: ()=> LoginPage (),),
     GetPage(name: Routes.welcomePage2, page: ()=> WelcomePage2 (),),
     GetPage(name: Routes.welcomePage3, page: ()=> WelcomePage3 (),),
     GetPage(name: Routes.welcomePage4, page: ()=> WelcomePage4 (),),
     GetPage(name: Routes.welcomeAuthPage, page: ()=> WelcomeAuthPage(),),
     GetPage(name: Routes.signIn, page: ()=> SignInScreen(),),
     GetPage(name: Routes.signUp, page: ()=> SignUpScreen(),),
    GetPage(name: Routes.forgotPage, page: ()=> ForgotPassword(),),
    GetPage(name: Routes.verificationCode, page: ()=> VerificationCode(),),
    GetPage(name: Routes.resetPassword, page: ()=> ResetPassword(),),
    GetPage(name: Routes.sleep1, page: ()=> Sleep1(),),
    GetPage(name: Routes.sleep2, page: ()=> Sleep2(),),
    GetPage(name: Routes.sleep3, page: ()=> Sleep3(),),
    GetPage(name: Routes.onBoard, page: ()=> OnBoard(),),
    GetPage(name: Routes.home1, page: ()=>HomePage1(),),
    GetPage(name: Routes.dialog, page: ()=>DialogExample(),),

  ];
}