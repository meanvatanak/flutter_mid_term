import 'package:flutter/material.dart';
import 'package:mid_term/utilities/constants.dart';
import 'package:mid_term/views/auth/login.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 2),
      () {
        Navigator.of(context).pushReplacementNamed('/welcome_page');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 200),
            Container(
              width: 250,
              height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(150),
                color: Colors.white,
                //shadow
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 0.5, //how far shadow
                    blurRadius: 10, //soften shadow
                    // offset: Offset(0, 3), //move shadow
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Image.network(
                  'http://camasean.edu.kh/img/logo/cam-asean.png',
                ),
              ),
            ),
            SizedBox(height: 300),
            Text(
              "Welcome to CAM-ASEAN",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Version 1.0.0",
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
