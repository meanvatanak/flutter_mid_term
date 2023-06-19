import 'package:flutter/material.dart';
import 'package:mid_term/views/auth/login.dart';
import 'package:mid_term/views/home/homepage.dart';
import 'package:mid_term/views/home/welcome.dart';
import 'package:mid_term/views/profile/profile.dart';

import '../views/auth/signup.dart';
import '../views/home/main_page.dart';

Route<dynamic>? appRoute(RouteSettings settings) {
  switch (settings.name) {
    case '/':
      return MaterialPageRoute(builder: (context) => MainPage());
    case '/main_page':
      return MaterialPageRoute(builder: (context) => MainPage());
    case '/welcome_page':
      return MaterialPageRoute(builder: (context) => WelcomePage());
    case '/login':
      return MaterialPageRoute(builder: (context) => LoginPage());
    case '/signup':
      return MaterialPageRoute(builder: (context) => Signup());
    case '/homepage':
      return MaterialPageRoute(builder: (context) => Homepage());
    case '/profile':
      return MaterialPageRoute(builder: (context) => Profile());
    // case '/notification':
    //   final routeArguments = settings.arguments as Map<String, dynamic>;
    //   return MaterialPageRoute(
    //     builder: (context) => NotificationPage(
    //       routeArguments: routeArguments,
    //     ),
    //   );
    default:
      return null;
  }
}

class HomePage {}
