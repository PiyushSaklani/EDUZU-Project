import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../Constants.dart';

class CoursesWidget extends StatelessWidget {
  final String Coursename;
  final String Teachername;
  const CoursesWidget({required this.Coursename, required this.Teachername});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10),
      margin: const EdgeInsets.only(bottom: 12),
      height: 90,
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
                height: 45,
                width: 290,
                child: Text(
                  Coursename,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black.withOpacity(.8),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                // color: Colors.blue,
                height: 32,
                width: 290,
                child: Text(
                  Teachername,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black.withOpacity(.7),
                  ),
                ),
              ),
            ],
          ),
          Container(
            // color: Colors.cyan,
            alignment: Alignment.bottomLeft,
            height: 70,
            width: 36,
            child: IconButton(
              onPressed: () => {
                launch(
                    "https://learn.niituniversity.in/course-handout?token=d8ca8be2b99504cd3964eefcd75b0927&crscd=CS%20211")
              },
              icon: const Icon(
                Icons.book,
                size: 30,
                color: kPrimaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
