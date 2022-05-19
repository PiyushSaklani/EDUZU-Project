import 'package:flutter/material.dart';
import 'package:flutter_application_1/Timetable/Friday.dart';
import 'package:flutter_application_1/Timetable/Monday.dart';
import 'package:flutter_application_1/Timetable/Saturday.dart';
import 'package:flutter_application_1/Timetable/Sunday.dart';
import 'package:flutter_application_1/Timetable/Thursday.dart';
import 'package:flutter_application_1/Timetable/Tuesday.dart';
import 'package:flutter_application_1/Timetable/Wednesday.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class TimetablePage extends StatelessWidget {
  const TimetablePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //* To get the size of the screen
    double vicwInset = MediaQuery.of(context)
        .viewInsets
        .bottom; //* To Know that keyboard is open or not
    return Scaffold(
      body: LiquidSwipe(
        pages: [
          Container(
            child: const Monday(),
          ),
          Container(
            child: const Tuesday(),
          ),
          Container(
            child: const Wednesday(),
          ),
          Container(
            child: const Thursday(),
          ),
          Container(
            child: const Friday(),
          ),
          Container(
            child: const Saturday(),
          ),
          Container(
            child: const Sunday(),
          ),
        ],
      ),
    );
  }
}
