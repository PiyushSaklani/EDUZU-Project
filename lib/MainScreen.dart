import 'package:flutter/material.dart';

import 'package:flutter_application_1/MenuScreen.dart';
import 'package:flutter_application_1/ProfileScreen.dart';
import 'package:flutter_application_1/Widgets/Attendance_Widget.dart';
import 'package:flutter_application_1/Widgets/Timetable_Widget.dart';

import 'Constants.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //* To get the size of the screen
    double vicwInset = MediaQuery.of(context)
        .viewInsets
        .bottom; //* To Know that keyboard is open or not
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(right: 5),
              // color: Colors.amber,
              height: 35,
              width: 35,
              child: const Image(
                image: AssetImage('assets/images/onlylogo_white.png'),
              ),
            ),
            const Text(
              "EDUZU",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ],
        ),
        leading: Container(
          child: IconButton(
            onPressed: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MenuScreen(),
                ),
              ),
            },
            icon: const Icon(Icons.menu),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ProfileScreen(),
                      ),
                    ),
                  },
              icon: const CircleAvatar(
                backgroundColor: Colors.blueGrey,
                backgroundImage: AssetImage('assets/images/Profile_1.jpeg'),
              ))
        ],
      ),
      // drawer: const MenuScreen(),
      body: SingleChildScrollView(
        child: Container(
          // color: Colors.deepOrangeAccent,
          //? ^^
          width: size.width,
          padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
          child: Column(
            children: [
              //! Timetable Starts
              Container(
                padding: const EdgeInsets.only(
                  left: 15,
                  bottom: 5,
                ),
                margin: const EdgeInsets.only(bottom: 5),
                alignment: Alignment.centerLeft,
                // color: Colors.amber,
                height: 30,
                width: size.width,
                child: Text("Timetable",
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.8),
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
              ),
              const Timetable_Widget(
                  Classstarttime: "9:00 AM",
                  Classendtime: "10:30 AM",
                  Class: "CS201 - DAA",
                  Teachername: "Sanjay Biswash"),
              const Timetable_Widget(
                  Classstarttime: "10:30 AM",
                  Classendtime: "12:30 PM",
                  Class: "CS211 - OS",
                  Teachername: "Kumar Nitesh"),
              const Timetable_Widget(
                  Classstarttime: "1:30 PM",
                  Classendtime: "3:00 PM",
                  Class: "CS302 - TOC",
                  Teachername: "Ayan Nandy"),
              const Timetable_Widget(
                  Classstarttime: "4:30 PM",
                  Classendtime: "6:00 PM",
                  Class: "CS122 - CAO",
                  Teachername: "Vikas Upadhyaya"),
              //! Timetable Ends
              //! Attendance percentage Starts
              Container(
                padding: const EdgeInsets.only(left: 15, bottom: 5),
                alignment: Alignment.centerLeft,
                // color: Colors.amber,
                height: 30,
                width: size.width,
                margin: const EdgeInsets.only(bottom: 10, top: 20),
                child: Text("Attendance",
                    style: TextStyle(
                        color: Colors.black.withOpacity(.8),
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
              ),

              Container(
                alignment: Alignment.center,
                height: size.height * .36,
                width: size.width,
                margin: const EdgeInsets.only(left: 18, right: 18),
                decoration: BoxDecoration(
                    color: kPrimaryColor.withOpacity(.12),
                    // border: Border.all(width: 2, color: kPrimaryColor),
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Attendance_Widget1(
                            Class: "DBMS",
                            Coursecode: "CS231",
                            Percent: 0.78,
                            Strpercentage: "78%"),
                        Attendance_Widget1(
                            Class: "English",
                            Coursecode: "ENG102",
                            Percent: 0.7,
                            Strpercentage: "70%"),
                        Attendance_Widget1(
                            Class: "CAO",
                            Coursecode: "CS122",
                            Percent: 0.88,
                            Strpercentage: "88%"),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Attendance_Widget1(
                            Class: "OS",
                            Coursecode: "CS211",
                            Percent: 0.92,
                            Strpercentage: "92%"),
                        Attendance_Widget1(
                            Class: "TOC",
                            Coursecode: "CS302",
                            Percent: 0.48,
                            Strpercentage: "48%"),
                        Attendance_Widget1(
                            Class: "DAA",
                            Coursecode: "CS201",
                            Percent: 0.98,
                            Strpercentage: "98%"),
                      ],
                    ),
                  ],
                ),
              ),
              //! Attendance percentage End
              Container(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
