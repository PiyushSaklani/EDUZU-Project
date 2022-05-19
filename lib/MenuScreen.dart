import 'package:flutter/material.dart';
import 'package:flutter_application_1/Constants.dart';
import 'package:flutter_application_1/LoginPage.dart';
import 'package:flutter_application_1/MainScreen.dart';
import 'package:flutter_application_1/Widgets/Menu_Widget.dart';

import 'Database/Supabase_ manager.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  bool isLoaded = false;
  String? name;
  SupabaseManager manager = SupabaseManager();
  @override
  void initState() {
    super.initState();
    manager.getData().then(
      (val) {
        name = val['name'];
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
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/Menu_background.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                // color: Colors.pink,
                //? ^^
                height: size.height * .25,
                width: size.width,
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 10, left: 5),
                      alignment: Alignment.topLeft,
                      // color: Colors.blue,
                      //? ^^
                      height: size.height * .25,
                      width: 40,
                      //? Back Button
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
                        ),
                      ),
                    ),
                    Container(
                      // color: Colors.amber,
                      //? ^^
                      height: size.height * .15,
                      width: size.width * .25,
                      margin: const EdgeInsets.only(left: 5, right: 15),
                      child: const CircleAvatar(
                        // backgroundColor: Colors.blueGrey,
                        backgroundImage:
                            AssetImage('assets/images/Profile_1.jpeg'),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          // color: Colors.blue,
                          //? ^^
                          height: size.height * .08,
                          width: size.width * .5,
                          padding: const EdgeInsets.fromLTRB(10, 25, 10, 5),
                          child: FittedBox(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              name ?? ' ',
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        Container(
                          // color: Colors.green,
                          //? ^^
                          height: size.height * .06,
                          width: size.width * .5,
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 30),
                          child: FittedBox(
                            alignment: Alignment.topLeft,
                            child: Text(
                              SupabaseManager.client.auth.currentUser?.email ??
                                  'sahej@gmail.com',
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.9)),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
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
              //         color: Colors.black.withOpacity(.1),
              //         borderRadius: BorderRadius.circular(20)),
              //   ),
              // ),
              SizedBox(
                // color: Colors.pink,
                //? ^^
                height: 480,
                width: size.width,
                child: Column(
                  children: const [
                    Menu_Widget(
                      icon: Icons.home,
                      Pagename: "Home",
                    ),
                    Menu_Widget(
                      icon: Icons.class_,
                      Pagename: "Courses",
                    ),
                    Menu_Widget(
                      icon: Icons.person,
                      Pagename: "Profile",
                    ),
                    Menu_Widget(
                      icon: Icons.calendar_month,
                      Pagename: "Timetable",
                    ),
                    Menu_Widget(
                      icon: Icons.emoji_people,
                      Pagename: "Attendance",
                    ),
                    Menu_Widget(
                      icon: Icons.settings,
                      Pagename: "Setting",
                    ),
                    Menu_Widget(
                      icon: Icons.contact_page,
                      Pagename: "Contact Us",
                    ),
                  ],
                ),
              ),
              //? Log Out
              SizedBox(
                // color: Colors.blue,
                //? ^^
                height: 70,
                width: 170,
                child: TextButton(
                  onPressed: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginPage(),
                      ),
                    ),
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 150,
                        child: const Text(
                          "Log Out",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: kPrimaryColor),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: kPrimaryColor, width: 2),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
