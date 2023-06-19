import 'package:flutter/material.dart';
import 'package:mid_term/utilities/constants.dart';
import 'package:mid_term/views/home/homepage.dart';
import 'package:mid_term/views/profile/profile.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: [
          Homepage(),
          Homepage(),
          Homepage(),
          Homepage(),
          Profile(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedLabelStyle: TextStyle(
          color: primaryColor,
          fontWeight: FontWeight.bold,
        ),
        unselectedLabelStyle: TextStyle(
          color: darkGreyColor,
        ),
        onTap: (bottomItemIndex) {
          setState(() {
            _currentIndex = bottomItemIndex;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Padding(
                padding: const EdgeInsets.only(bottom: 3),
                child: Icon(Icons.home, color: primaryColor)),
            activeIcon: Padding(
                padding: const EdgeInsets.only(bottom: 3),
                child: Icon(Icons.home_filled, color: primaryColor)),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Padding(
                padding: const EdgeInsets.only(bottom: 3),
                child: Icon(Icons.favorite_border_sharp, color: primaryColor)),
            activeIcon: Padding(
                padding: const EdgeInsets.only(bottom: 3),
                child: Icon(Icons.favorite_sharp, color: primaryColor)),
            label: 'Wishlist',
          ),
          BottomNavigationBarItem(
            icon: Padding(
                padding: const EdgeInsets.only(bottom: 3),
                child:
                    Icon(Icons.send_and_archive_outlined, color: primaryColor)),
            activeIcon: Padding(
                padding: const EdgeInsets.only(bottom: 3),
                child: Icon(Icons.send_sharp, color: primaryColor)),
            label: 'Trips',
          ),
          BottomNavigationBarItem(
            icon: Padding(
                padding: const EdgeInsets.only(bottom: 3),
                child: Icon(Icons.book_online_outlined, color: primaryColor)),
            activeIcon: Padding(
                padding: const EdgeInsets.only(bottom: 3),
                child: Icon(Icons.book_sharp, color: primaryColor)),
            label: 'Booking',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 3),
              child: Icon(Icons.person_2_outlined, color: primaryColor),
            ),
            activeIcon: Padding(
              padding: const EdgeInsets.only(bottom: 3),
              child: Icon(Icons.person, color: primaryColor),
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
