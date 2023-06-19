import 'package:flutter/material.dart';
import 'package:mid_term/utilities/constants.dart';
import 'package:mid_term/wigdet/setting_listtile.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.width * 0.9,
              color: primaryColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 30),
                  Text(
                    "Profile",
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: 160,
                    height: 160,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: secondaryColor,
                        width: 5,
                      ),
                    ),
                    child: SizedBox(
                      height: 150,
                      width: 150,
                      child: CircleAvatar(
                        radius: 30.0,
                        backgroundImage: NetworkImage(
                          'http://camasean.edu.kh/img/employee/Mean%20Vatanak1665116241.jpg',
                        ),
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Text(
                    "Mean Vatanak",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "mvatanak36@gmail.com",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Text('Account Setting'),
            ),
            SizedBox(height: 20),
            SettingListTile(title: "Edit Profile", myIcon: Icons.edit),
            SettingListTile(title: "Payment", myIcon: Icons.payment),
            SettingListTile(title: "Notification", myIcon: Icons.notifications),
            SettingListTile(title: "Language", myIcon: Icons.language),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Text('Support'),
            ),
            SizedBox(height: 20),
            SettingListTile(title: "Message", myIcon: Icons.message),
            SettingListTile(title: "Give Us Feedback", myIcon: Icons.feedback),
            SettingListTile(title: "Terms of Service", myIcon: Icons.rule),
            SettingListTile(title: "About Us", myIcon: Icons.info),
            SettingListTile(title: "Log Out", myIcon: Icons.logout),
          ],
        ),
      ),
    );
  }
}
