import 'package:flutter/material.dart';

class ProfilePage_widget extends StatelessWidget {
  final String inputone;
  final String inputtwo;
  const ProfilePage_widget({required this.inputone, required this.inputtwo});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //* To get the size of the screen
    double vicwInset = MediaQuery.of(context)
        .viewInsets
        .bottom; //* To Know that keyboard is open or not
    return Container(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 40, right: 40),
            padding: const EdgeInsets.only(left: 10),
            // color: Colors.brown,
            //? ^^
            height: 45,
            width: size.width,
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 10),
                  alignment: Alignment.centerLeft,
                  // color: Colors.amber,
                  height: 45,
                  width: 100,
                  child: Text(
                    inputone,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(right: 10),
                  alignment: Alignment.centerRight,
                  // color: Colors.blue,
                  height: 45,
                  width: 190,
                  child: Text(
                    inputtwo,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                )
              ],
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
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(20)),
            ),
          ),
        ],
      ),
    );
  }
}
