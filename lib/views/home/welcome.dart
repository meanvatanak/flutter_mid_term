import 'package:flutter/material.dart';
import 'package:mid_term/utilities/constants.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Welcome'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 350,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(200),
                  ),
                  image: DecorationImage(
                    image: NetworkImage(
                      'http://camasean.edu.kh/img/web-front/about-us/271.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
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
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Let's get",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: primaryColor,
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 30,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: NetworkImage(
                          'http://camasean.edu.kh/img/web-front/about-us/271.jpg',
                        ),
                        fit: BoxFit.cover,
                      ),
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
                    // child: Container(
                    //   decoration: BoxDecoration(
                    //     borderRadius: BorderRadius.circular(20),
                    //     color: Colors.white.withOpacity(0.5),
                    //   ),
                    // ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Started",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: primaryColor,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Text(
                  "Login to your account below or signup for an amazing experience",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: darkGreyColor,
                  ),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 50,
                width: 300,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/signup');
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(primaryColor),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  child: Text(
                    'Sign Up with Mobile',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account?',
                    style: TextStyle(
                      fontSize: 16,
                      color: darkGreyColor,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: primaryColor,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
