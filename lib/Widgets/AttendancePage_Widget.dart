import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import '../Constants.dart';

class Attendance_Widget2 extends StatelessWidget {
  final String Coursename;
  final String Attendance;
  final double Percent;

  const Attendance_Widget2({
    required this.Coursename,
    required this.Attendance,
    required this.Percent,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10),
      margin: const EdgeInsets.only(bottom: 12),
      height: 70,
      width: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: kPrimaryColor.withOpacity(.12),
        // border: Border.all(width: 2, color: kPrimaryColor),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              Container(
                // color: Colors.green,
                alignment: Alignment.centerLeft,
                height: 65,
                width: 250,
                child: Text(
                  Coursename,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black.withOpacity(.8),
                  ),
                ),
              ),
            ],
          ),
          Container(
            // color: Colors.cyan,
            alignment: Alignment.center,
            height: 70,
            width: 70,
            child: CircularPercentIndicator(
              radius: 25,
              lineWidth: 5,
              percent: Percent,
              center: Text(Attendance),
              progressColor: kPrimaryColor,
              backgroundColor: kPrimaryColor.withOpacity(.12),
              animation: true,
              animationDuration: 1500,
              circularStrokeCap: CircularStrokeCap.round,
            ),
          ),
        ],
      ),
    );
  }
}
