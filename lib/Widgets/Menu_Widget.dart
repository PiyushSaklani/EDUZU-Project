import 'package:flutter/material.dart';
import 'package:flutter_application_1/AttendancePage.dart';
import 'package:flutter_application_1/ContactUsPage.dart';
import 'package:flutter_application_1/CoursesPage.dart';
import 'package:flutter_application_1/MainScreen.dart';
import 'package:flutter_application_1/ProfileScreen.dart';
import 'package:flutter_application_1/SettingPage.dart';
import 'package:flutter_application_1/TimetablePage.dart';

import '../Constants.dart';

class Menu_Widget extends StatelessWidget {
  final IconData icon;
  final String Pagename;
  const Menu_Widget({required this.icon, required this.Pagename});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //* To get the size of the screen
    double vicwInset = MediaQuery.of(context)
        .viewInsets
        .bottom; //* To Know that keyboard is open or not
    return Container(
      // color: Colors.amber,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 40, right: 40),
            padding: const EdgeInsets.only(left: 10),
            // color: Colors.brown,
            //? ^^
            height: 45,
            width: size.width,
            child: TextButton(
              onPressed: () => {
                if (Pagename == "Home")
                  {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MainScreen(),
                      ),
                    ),
                  }
                else if (Pagename == "Courses")
                  {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CoursesPage(),
                      ),
                    ),
                  }
                else if (Pagename == "Attendance")
                  {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AttendancePage(),
                      ),
                    ),
                  }
                else if (Pagename == "Profile")
                  {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ProfileScreen(),
                      ),
                    ),
                  }
                else if (Pagename == "Setting")
                  {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SettingPage(),
                      ),
                    ),
                  }
                else if (Pagename == "Contact Us")
                  {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ContactUsPage(),
                      ),
                    ),
                  }
                else if (Pagename == "Timetable")
                  {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TimetablePage(),
                      ),
                    ),
                  }
              },
              child: Row(
                children: [
                  Icon(
                    icon,
                    color: kPrimaryColor,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: Text(
                      Pagename,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.black.withOpacity(.7)),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            // color: Colors.amber,
            //? ^^
            height: 12,
            width: size.width,
            padding: const EdgeInsets.fromLTRB(40, 0, 40, 10),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(.2),
                  borderRadius: BorderRadius.circular(20)),
            ),
          ),
        ],
      ),
    );
  }
}
