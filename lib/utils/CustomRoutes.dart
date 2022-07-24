import 'package:credenager/pages/signup_page.dart';
import 'package:credenager/pages/splash_page.dart';
import 'package:credenager/pages/welcome_page.dart';
import 'package:flutter/material.dart';

class CustomRoute {
  static String splashPage = "/splash";
  static String signupPage = "/signup";
  static String welcomePage = "/home";

  static Map<String, Widget Function(BuildContext)> routeMap = {
    splashPage: (context) => const SplashPage(),
    welcomePage: (context) => const WelcomePage(),
    signupPage: (context) => const SignupPage(),
  };
}
