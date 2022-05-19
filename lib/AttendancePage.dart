import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgets/AttendancePage_Widget.dart';

import 'MainScreen.dart';

class AttendancePage extends StatelessWidget {
  const AttendancePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //* To get the size of the screen
    double vicwInset = MediaQuery.of(context)
        .viewInsets
        .bottom; //* To Know that keyboard is open or not
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.bottomRight,
              // color: Colors.amber,
              height: 50,
              width: 50,
              child: IconButton(
                  onPressed: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MainScreen(),
                          ),
                        ),
                      },
                  icon: const Icon(Icons.arrow_back)),
            ),
            Container(
              alignment: Alignment.topLeft,
              // color: Colors.blue,
              height: 50,
              width: size.width,
              padding: const EdgeInsets.only(left: 50),
              margin: const EdgeInsets.only(bottom: 20),
              child: const Text(
                "Attendance",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              // color: Colors.pink,
              height: 620,
              width: size.width,
              child: Column(
                children: const [
                  Attendance_Widget2(
                    Coursename: "ENG102 - English Literature",
                    Attendance: "70%",
                    Percent: 0.7,
                  ),
                  Attendance_Widget2(
                    Coursename: "CS211 - Operating Syatem",
                    Attendance: "92%",
                    Percent: 0.92,
                  ),
                  Attendance_Widget2(
                    Coursename: "CS302 - Theory of Computation",
                    Attendance: "48%",
                    Percent: 0.48,
                  ),
                  Attendance_Widget2(
                    Coursename: "CS122 - Computer Architecture & Organisation",
                    Attendance: "88%",
                    Percent: 0.88,
                  ),
                  Attendance_Widget2(
                    Coursename: "CS201 - Design & Analysis of Algorithms",
                    Attendance: "98%",
                    Percent: 0.98,
                  ),
                  Attendance_Widget2(
                    Coursename: "CS231 - Database Management Syatem",
                    Attendance: "78%",
                    Percent: 0.78,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
