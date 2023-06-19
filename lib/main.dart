import 'package:flutter/material.dart';
import 'package:mid_term/routes/web.dart';
import 'package:mid_term/utilities/constants.dart';
import 'package:mid_term/views/home/splash_page.dart';


void main() {
  runApp(const RootApp());
}

class RootApp extends StatelessWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashPage(),
      onUnknownRoute: appRoute,
      theme: ThemeData(
          colorScheme: ColorScheme.light(
            brightness: Brightness.light,
            primary: primaryColor,
            secondary: secondaryColor,
            error: redColor,
          )
      ),
    );
  }
}
