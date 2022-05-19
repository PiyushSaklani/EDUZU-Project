import 'package:flutter/material.dart';
import 'package:flutter_application_1/MainScreen.dart';
import 'package:flutter_application_1/Widgets/ProfilePage_Widgets.dart';

import 'Database/Supabase_ manager.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isLoaded = false;
  String? name;
  double? cgpa;
  String? year;
  String? degree;
  String? currentsem;
  String? state;
  String? dob;
  SupabaseManager manager = SupabaseManager();

  @override
  void initState() {
    super.initState();
    manager.getData().then(
      (val) {
        name = val['name'];
        cgpa = double.parse(val['cgpa'].toString());
        year = val['year'];
        degree = val['degree'];
        currentsem = val['currentsem'];
        state = val['state'];
        dob = val['dob'];

        setState(
          () {
            isLoaded = true;
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //* To get the size of the screen
    double vicwInset = MediaQuery.of(context)
        .viewInsets
        .bottom; //* To Know that keyboard is open or not

    if (!isLoaded) {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }
    return Scaffold(
        body: SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/Profile_background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              // color: Colors.amber,
              height: 200,
              width: size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.bottomRight,
                    // color: Colors.blue,
                    height: 50,
                    width: 50,
                    child: IconButton(
                        onPressed: () => {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const MainScreen(),
                                ),
                              ),
                            },
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        )),
                  ),
                  Container(
                    alignment: Alignment.center,
                    // color: Colors.red,
                    height: 150,
                    width: size.width,
                    child: const CircleAvatar(
                      backgroundColor: Colors.blueGrey,
                      backgroundImage:
                          AssetImage('assets/images/Profile_1.jpeg'),
                      radius: 60,
                    ),
                  )
                ],
              ),
            ),
            Container(
              // color: Colors.blue,
              padding: const EdgeInsets.only(bottom: 5),
              alignment: Alignment.bottomCenter,
              height: 35,
              width: size.width,
              child: Text(
                name ?? 'Sahej',
                style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            Container(
              // color: Colors.pink,
              alignment: Alignment.topCenter,
              height: 25,
              width: size.width,
              child: Text(
                SupabaseManager.client.auth.currentUser?.email ??
                    'sahej@gmail.com',
                style: const TextStyle(fontSize: 14, color: Colors.white),
              ),
            ),
            // Container(
            //   // color: Colors.amber,
            //   //? ^^
            //   height: 12,
            //   width: size.width,
            //   padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
            //   child: Container(
            //     decoration: BoxDecoration(
            //         color: Colors.black12,
            //         borderRadius: BorderRadius.circular(20)),
            //   ),
            // ),
            Container(
              margin: const EdgeInsets.only(top: 30),
              // color: Colors.pink,
              //? ^^
              height: 460,
              width: size.width,
              child: Column(
                children: [
                  ProfilePage_widget(
                      inputone: "Name :", inputtwo: name?.toString() ?? 'Piyush'),
                  ProfilePage_widget(
                      inputone: "CGPA :", inputtwo: cgpa?.toString() ?? '10'),
                  ProfilePage_widget(
                      inputone: "Year :", inputtwo: year?.toString() ?? '2021 - 2025'),
                  ProfilePage_widget(
                      inputone: "Degree :", inputtwo: degree?.toString() ?? 'B. Tech ECE'),
                  // ProfilePage_widget(
                  //     inputone: "Id :", inputtwo: cgpa?.toString() ?? '10'),
                  ProfilePage_widget(
                      inputone: "Current Semester :", inputtwo: currentsem?.toString() ?? '5'),
                  ProfilePage_widget(
                      inputone: "State :", inputtwo: state?.toString() ?? 'Jaipur'),
                  ProfilePage_widget(
                      inputone: "D.O.B :", inputtwo: dob?.toString() ?? '01-01-2000'),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
