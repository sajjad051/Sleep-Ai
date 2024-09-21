import 'package:ai_sleep/Auth/Forgot/forgot_password.dart';
import 'package:ai_sleep/Auth/Forgot/reset_password.dart';
import 'package:ai_sleep/Auth/Forgot/verification_code.dart';
import 'package:ai_sleep/Auth/Sign_in/Screen/Sign_in_screen.dart';
import 'package:ai_sleep/Auth/Sign_up/Screen/Sign_up_screen.dart';
import 'package:ai_sleep/Auth/welcome_auth_page.dart';
import 'package:ai_sleep/Home/album_screen.dart';
import 'package:ai_sleep/Home/artist_profile.dart';
import 'package:ai_sleep/Home/bedtime_details.dart';
import 'package:ai_sleep/Home/dialog.dart';
import 'package:ai_sleep/Home/fearured_details.dart';
import 'package:ai_sleep/Home/home_page/breath_ex_screen.dart';
import 'package:ai_sleep/Home/home_page/breath_time_count.dart';
import 'package:ai_sleep/Home/home_page/home_screen.dart';
import 'package:ai_sleep/Home/home_page1.dart';
import 'package:ai_sleep/Home/music_player_screen.dart';
import 'package:ai_sleep/HomePageView/home_page_view.dart';
import 'package:ai_sleep/Navigation/navigation_menu.dart';
import 'package:ai_sleep/Profile/profile_screen.dart';
import 'package:ai_sleep/Records/records_screen.dart';
import 'package:ai_sleep/Sleep/controler/wheelPicker.dart';
import 'package:ai_sleep/Sleep/sleep_1.dart';
import 'package:ai_sleep/Sleep/time_sleep.dart';
import 'package:ai_sleep/Statistics/sleep_at_line_chart.dart';
import 'package:ai_sleep/Statistics/statistics_Screen.dart';
import 'package:ai_sleep/TabBar_Music/tabbar_music.dart';
import 'package:ai_sleep/WelcomeScreen/widget/On_Board_screen/onBoard.dart';
import 'package:ai_sleep/ripple_widget.dart';
import 'package:ai_sleep/ripple_wave.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../Sleep/sleep_2.dart';
import '../Sleep/sleep_3.dart';
import '../WelcomeScreen/welcome_page_1.dart';
import '../WelcomeScreen/welcome_page_2.dart';
import '../WelcomeScreen/welcome_page_3.dart';
import '../WelcomeScreen/welcome_page_4.dart';
import '../carousel_widget.dart';
import '../linear_timer.dart';

abstract class Routes {
  static const test = '/test';
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
  static const albam = '/albam';
  static const musicPlayer = '/musicPlayer';
  static const artistProfile = '/artistProfile';
  static const homeScreen = '/homeScreen';
  static const breathEx = '/breathEx';
  static const breathTime = '/BreathTime';
  static const profile = '/profile';
  static const records = '/records';
  static const statistics = '/statistics';
  static const bedTimeDtl = '/bedTimeDtl';
  static const featuredDtl = '/featuredDtl';
  static const navigationMenu = '/navigationMenu';
  static const homePageView = '/homePageView';
  static const homePageView1 = '/homePageView1';
  static const pBar = '/pBar';
  static const rippleWaveScreen = '/rippleWaveScreen';
  static const linearTimer = '/linearTimer';
}

abstract class AppPage {
  static final routes = [
    GetPage(
      name: Routes.test,
      page: () => TabBarMusic(),
    ),
    GetPage(
      name: Routes.login,
      page: () => CarouselWidget(),
    ),
    GetPage(
      name: Routes.welcomePage2,
      page: () => WelcomePage2(),
    ),
    GetPage(
      name: Routes.welcomePage3,
      page: () => WelcomePage3(),
    ),
    GetPage(
      name: Routes.welcomePage4,
      page: () => WelcomePage4(),
    ),
    GetPage(
      name: Routes.welcomeAuthPage,
      page: () => WelcomeAuthPage(),
    ),
    GetPage(
      name: Routes.signIn,
      page: () => SignInScreen(),
    ),
    GetPage(
      name: Routes.signUp,
      page: () => SignUpScreen(),
    ),
    GetPage(
      name: Routes.forgotPage,
      page: () => ForgotPassword(),
    ),
    GetPage(
      name: Routes.verificationCode,
      page: () => VerificationCode(),
    ),
    GetPage(
      name: Routes.resetPassword,
      page: () => ResetPassword(),
    ),
    GetPage(
      name: Routes.sleep1,
      page: () => Sleep1(),
    ),
    GetPage(
      name: Routes.sleep2,
      page: () => Sleep2(),
    ),
    GetPage(
      name: Routes.sleep3,
      page: () => Sleep3(),
    ),
    GetPage(
      name: Routes.onBoard,
      page: () => OnBoard(),
    ),
    GetPage(
      name: Routes.home1,
      page: () => HomePage1(),
    ),
    GetPage(
      name: Routes.dialog,
      page: () => DialogExample(),
    ),
    GetPage(
      name: Routes.albam,
      page: () => AlbumScreen(),
    ),
    GetPage(
      name: Routes.musicPlayer,
      page: () => MusicPlayerScreen(),
    ),
    GetPage(
      name: Routes.artistProfile,
      page: () => ArtistProfile(),
    ),
    GetPage(name: Routes.homeScreen, page: () => HomeScreen()),
    GetPage(name: Routes.breathEx, page: () => BreathExScreen()),
    GetPage(name: Routes.breathTime, page: () => BreathTimeCount()),
    GetPage(name: Routes.profile, page: () => ProfileScreen()),
    GetPage(name: Routes.statistics, page: () => StatisticsScreen()),
    GetPage(name: Routes.records, page: () => RecordsScreen()),
    GetPage(name: Routes.bedTimeDtl, page: () => BedtimeDetails()),
    GetPage(name: Routes.featuredDtl, page: () => FeaturedDetails()),
    GetPage(name: Routes.navigationMenu, page: () => NavigationMenu()),
    GetPage(name: Routes.homePageView, page: () => HomePageView()),
    GetPage(name: Routes.homePageView1, page: () => LineChartWidget()),
    GetPage(name: Routes.pBar, page: () => RippleWidget()),
    GetPage(name: Routes.rippleWaveScreen, page: () => RippleWaveScreen()),
    // GetPage(name: Routes.linearTimer, page: () => LinearWidgetDemo()),
  ];
}
