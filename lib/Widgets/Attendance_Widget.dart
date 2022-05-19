import 'package:flutter/material.dart';
import 'package:flutter_application_1/Constants.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Attendance_Widget1 extends StatelessWidget {
  final double Percent;
  final String Strpercentage;
  final String Coursecode;
  final String Class;
  const Attendance_Widget1(
      {required this.Class,
      required this.Coursecode,
      required this.Percent,
      required this.Strpercentage});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //* To get the size of the screen
    double vicwInset = MediaQuery.of(context)
        .viewInsets
        .bottom; //* To Know that keyboard is open or not
    return Container(
      alignment: Alignment.topCenter,
      height: size.height * .15,
      width: size.width * .2,
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
      margin: const EdgeInsets.fromLTRB(18, 15, 18, 5),
      decoration: BoxDecoration(
        // color: Colors.cyan,
        //? ^^
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          //? Circular Percentage
          CircularPercentIndicator(
            radius: 25,
            lineWidth: 5,
            percent: Percent,
            center: Text(
              Strpercentage,
              style: TextStyle(
                color: Colors.black.withOpacity(.7),
              ),
            ),
            progressColor: kPrimaryColor,
            backgroundColor: kPrimaryColor.withOpacity(.12),
            animation: true,
            animationDuration: 1500,
            circularStrokeCap: CircularStrokeCap.round,
          ),
          Container(
            //? Course code
            margin: const EdgeInsets.only(top: 5),
            padding: const EdgeInsets.fromLTRB(0, 4, 0, 0),
            // color: Colors.pink,
            //? ^^
            height: size.height * .03,
            width: size.width * .2,
            child: FittedBox(
              child: Text(
                Coursecode,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black.withOpacity(.7)),
              ),
            ),
          ),
          Container(
            //? Course name
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 6),
            // color: Colors.red,
            //? ^^
            height: size.height * .03,
            width: size.width * .2,
            child: FittedBox(
              child: Text(
                Class,
                style: TextStyle(color: Colors.black.withOpacity(0.6)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
