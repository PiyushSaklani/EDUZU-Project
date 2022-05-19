import 'package:flutter/material.dart';

import '../Constants.dart';

class Timetable_class_Widget extends StatelessWidget {
  final String Time;
  final String Duration;
  final String Classlocation;
  final String Classname;
  final String Teacher;
  const Timetable_class_Widget(
      {required this.Classlocation,
      required this.Classname,
      required this.Duration,
      required this.Teacher,
      required this.Time});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //* To get the size of the screen
    double vicwInset = MediaQuery.of(context)
        .viewInsets
        .bottom; //* To Know that keyboard is open or not
    return SizedBox(
      // padding: const EdgeInsets.only(bottom: 5),
      // color: Colors.blue,
      height: 115,
      width: size.width,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 300,
                child: Text(
                  Time,
                  style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                ),
              ),
              Container(
                child: Text(
                  Duration,
                  style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                ),
              )
            ],
          ),
          //! Class detail
          Container(
            margin: const EdgeInsets.only(top: 2),
            padding: const EdgeInsets.only(left: 10),
            height: 90,
            width: size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: kPrimaryColor.withOpacity(.12),
              // border: Border.all(width: 2, color: kPrimaryColor),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    Classlocation,
                    style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54),
                  ),
                ),
                SizedBox(
                  height: 40,
                  child: Text(
                    Classname,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black.withOpacity(.8)),
                  ),
                ),
                Container(
                  child: Text(
                    Teacher,
                    style: TextStyle(
                        fontSize: 14, color: Colors.black.withOpacity(.7)),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
