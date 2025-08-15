import 'package:practice_flutter/loginLogout/LoginScreen.dart';
import 'package:practice_flutter/loginLogout/splashscreen.dart';
import 'package:practice_flutter/loginLogout/homepage.dart';

const String SplashRoute = "/splash";
const String LoginRoute = "/login";
const String HomeRoute = "/home";

final routes = {
  SplashRoute: (context) => SplashScreen(),
  LoginRoute: (context) => LoginScreen(),
  // HomeRoute: (context) => HomePage(),
  HomeRoute: (context) => Homepage(),
};
