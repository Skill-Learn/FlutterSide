import 'package:flutter/material.dart';
import 'package:skill_learn_client/auth/screens/auth_screens.dart';

class RouteGenerator {
  static const String homePage = '/';
  static const String signupPage = '/signup';
  static const String loginPage = '/login';
  static const String landingPage = '/landingPage';
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homePage:
        return MaterialPageRoute(builder: (_) => WelcomeScreen());
        break;
      case signupPage:
        return MaterialPageRoute(builder: (_) => Signup());
        break;
      case loginPage:
        return MaterialPageRoute(builder: (_) => Login());
        break;
      case landingPage:
        return MaterialPageRoute(builder: (_) => LandingScreen());
      default:
        throw FormatException('Route was not found');
    }
  }
}
