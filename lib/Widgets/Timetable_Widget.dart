import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../Constants.dart';

class Timetable_Widget extends StatelessWidget {
  final String Classstarttime;
  final String Classendtime;
  final String Class;
  final String Teachername;
  const Timetable_Widget(
      {required this.Classstarttime,
      required this.Classendtime,
      required this.Class,
      required this.Teachername});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //* To get the size of the screen
    double vicwInset = MediaQuery.of(context)
        .viewInsets
        .bottom; //* To Know that keyboard is open or not
    return Container(
      padding: const EdgeInsets.all(2),
      //* Outer Margin of Container
      margin: const EdgeInsets.fromLTRB(0, 8, 0, 8),
      //* Size of Container
      height: size.height * .08,
      width: size.width * .92,
      decoration: BoxDecoration(
        color: kPrimaryColor.withOpacity(.12),
        borderRadius: BorderRadius.circular(10),
        // border: Border.all(width: 2, color: kPrimaryColor),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            //? Timing
            // color: Colors.red,
            //? ^^
            height: 50,
            width: size.width * .2,

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  child: FittedBox(
                    child: Text(
                      Classstarttime,
                      style: TextStyle(
                          color: Colors.black.withOpacity(.6),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  height: size.height * .022,
                  width: size.width * .2,
                  // color: Colors.lime,
                  //? ^^
                ),
                Container(
                  height: size.height * .006,
                  width: size.width * .1,
                  // color: Colors.lime,
                  //? ^^
                  padding: const EdgeInsets.fromLTRB(15, 2, 15, 2),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(.7),
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),
                SizedBox(
                  child: FittedBox(
                      child: Text(
                    Classendtime,
                    style: TextStyle(
                        color: Colors.black.withOpacity(.6),
                        fontWeight: FontWeight.bold),
                  )),
                  height: size.height * .022,
                  width: size.width * .2,
                  // color: Colors.lime,
                  //? ^^
                )
              ],
            ),
          ),
          Container(
            //? Separator
            // color: Colors.pink,
            //? ^^
            height: 50,
            width: 9,
            padding: const EdgeInsets.fromLTRB(3.5, 0, 3.5, 0),
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(.1),
                    borderRadius: BorderRadius.circular(20))),
          ),
          SizedBox(
            //? Class detail
            // color: Colors.white38,
            //? ^^
            height: 50,
            width: size.width * .52,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // color: Colors.black,
                  //? ^^
                  height: size.height * .03,
                  width: size.width * .5,
                  padding: const EdgeInsets.fromLTRB(2, 0, 2, 0),
                  child: Text(
                    Class,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black.withOpacity(0.7),
                    ),
                  ),
                  alignment: Alignment.bottomLeft,
                ),
                Container(
                  // color: Colors.pink,
                  //? ^^
                  height: size.height * .0245,
                  width: size.width * .5,
                  padding: const EdgeInsets.fromLTRB(2, 0, 2, 3),
                  child: Text(
                    Teachername,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black.withOpacity(0.6),
                    ),
                  ),
                  alignment: Alignment.topLeft,
                ),
              ],
            ),
          ),
          Container(
            //? Join button
            margin: const EdgeInsets.only(right: 5),
            height: 25,
            width: size.width * .14,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: kPrimaryColor.withOpacity(.9),
                borderRadius: BorderRadius.circular(20)),
            child: InkWell(
              child: const Text(
                'Join',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              onTap: () => launch(Url_link),
            ),
          ),
        ],
      ),
    );
  }
}
