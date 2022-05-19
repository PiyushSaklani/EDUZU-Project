import 'package:flutter/material.dart';

class Timetable_day_Widget extends StatelessWidget {
  final String Day;
  final Color mColor;
  final Color Daycolor;
  const Timetable_day_Widget(
      {required this.Day, required this.mColor, required this.Daycolor});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //* To get the size of the screen
    double vicwInset = MediaQuery.of(context)
        .viewInsets
        .bottom; //* To Know that keyboard is open or not
    return Container(
      margin: const EdgeInsets.only(left: 3.5, right: 3.5),
      alignment: Alignment.center,
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: mColor,
        // border: Border.all(width: 2, color: kPrimaryColor),
      ),
      child: Text(
        Day,
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 22, color: Daycolor),
      ),
    );
  }
}
