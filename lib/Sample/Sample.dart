import 'package:flutter/material.dart';

class sample extends StatelessWidget {
  const sample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(50),
            color: Colors.blue,
            height: 200,
            width: 200,
            child: Container(
              color: Colors.red,
              height: 100,
              width: 100,
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(50),
            color: Colors.black,
            height: 200,
            width: 200,
            child: Container(
              color: Colors.red,
              height: 100,
              width: 100,
            ),
          )
        ],
      ),
    ));
  }
}
