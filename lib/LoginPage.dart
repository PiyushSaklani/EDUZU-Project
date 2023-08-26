import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Constants.dart';

import 'Database/Supabase_ manager.dart';
import 'MainScreen.dart';

// class LoginPage extends StatelessWidget {
//   const LoginPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size; //* To get the size of the screen
//     double vicwInset = MediaQuery.of(context)
//         .viewInsets
//         .bottom; //* To Know that keyboard is open or not
//     return Scaffold(
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Container(
//             decoration: const BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage('assets/images/LoginPage_background(8%).png'),
//                 fit: BoxFit.cover,
//               ),
//             ),
//             child: Column(
//               children: [
//                 SizedBox(
//                   // color: Colors.amber,
//                   height: size.height * .25,
//                   width: size.width,
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       // Container(
//                       //   padding: const EdgeInsets.only(left: 30),
//                       //   // color: Colors.blue,
//                       //   height: size.height * .2,
//                       //   width: 200,
//                       //   child: Column(
//                       //     mainAxisAlignment: MainAxisAlignment.center,
//                       //     crossAxisAlignment: CrossAxisAlignment.start,
//                       //     children: const [
//                       //       SizedBox(
//                       //         height: 35,
//                       //         child: FittedBox(
//                       //           child: Text(
//                       //             "Welcome to",
//                       //             style: TextStyle(
//                       //                 fontWeight: FontWeight.bold,
//                       //                 color: Colors.black),
//                       //           ),
//                       //         ),
//                       //       ),
//                       //       SizedBox(
//                       //         height: 40,
//                       //         child: FittedBox(
//                       //           child: Text("EDUZU",
//                       //               style: TextStyle(
//                       //                   fontWeight: FontWeight.bold,
//                       //                   color: Colors.black)),
//                       //         ),
//                       //       ),
//                       //     ],
//                       //   ),
//                       // ),
//                       Container(
//                         // TODO: Add LOGO
//                         // color: Colors.pink,
//                         margin: const EdgeInsets.only(left: 20, right: 20),
//                         height: size.height * .2,
//                         width: 150,
//                         child: const Image(
//                           image: AssetImage('assets/images/onlylogo_white.png'),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Container(
//                   // color: Colors.blue,
//                   height: size.height * .58,
//                   width: size.width,
//                   margin: const EdgeInsets.only(left: 20, right: 20),
//                   // decoration: BoxDecoration(
//                   //   color: kSecondaryColor,
//                   //   borderRadius: BorderRadius.circular(20),
//                   //   border: Border.all(width: 3, color: kPrimaryColor),
//                   // ),
//                   child: Column(
//                     children: [
//                       Container(
//                         margin: const EdgeInsets.only(top: 20),
//                         alignment: Alignment.center,
//                         // color: Colors.amber,
//                         height: 50,
//                         width: size.width,
//                         child: const Text(
//                           "Login",
//                           style: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               color: kPrimaryColor,
//                               fontSize: 30),
//                         ),
//                       ),
//                       Container(
//                         margin:
//                             const EdgeInsets.only(top: 60, left: 15, right: 15),
//                         alignment: Alignment.center,
//                         // color: Colors.blue,
//                         height: 50,
//                         width: 400,
//                         child: const TextField(
//                           cursorColor: kPrimaryColor,
//                           decoration: InputDecoration(
//                             labelStyle: TextStyle(color: kPrimaryColor),
//                             labelText: "Email",
//                             hintText: "name@example.com",
//                             fillColor: Colors.white,
//                             filled: true,
//                             prefixIcon: Icon(
//                               Icons.mail,
//                               color: kPrimaryColor,
//                             ),
//                             border: OutlineInputBorder(),
//                             enabledBorder: OutlineInputBorder(
//                               borderRadius: BorderRadius.all(
//                                 Radius.circular(50),
//                               ),
//                               borderSide:
//                                   BorderSide(color: kPrimaryColor, width: 2),
//                             ),
//                             focusedBorder: OutlineInputBorder(
//                               borderRadius: BorderRadius.all(
//                                 Radius.circular(50),
//                               ),
//                               borderSide:
//                                   BorderSide(color: kPrimaryColor, width: 2),
//                             ),
//                           ),
//                         ),
//                       ),
//                       Container(
//                         margin:
//                             const EdgeInsets.only(top: 20, left: 15, right: 15),
//                         alignment: Alignment.center,
//                         // color: Colors.red,
//                         height: 50,
//                         width: 400,
//                         child: const TextField(
//                           obscureText: true,
//                           cursorColor: kPrimaryColor,
//                           decoration: InputDecoration(
//                             labelStyle: TextStyle(color: kPrimaryColor),
//                             labelText: "Password",
//                             hintText: "!&#Oô°₹#£",
//                             fillColor: Colors.white,
//                             filled: true,
//                             prefixIcon: Icon(
//                               Icons.security,
//                               color: kPrimaryColor,
//                             ),
//                             border: OutlineInputBorder(),
//                             enabledBorder: OutlineInputBorder(
//                               borderRadius: BorderRadius.all(
//                                 Radius.circular(50),
//                               ),
//                               borderSide:
//                                   BorderSide(color: kPrimaryColor, width: 2),
//                             ),
//                             focusedBorder: OutlineInputBorder(
//                               borderRadius: BorderRadius.all(
//                                 Radius.circular(50),
//                               ),
//                               borderSide:
//                                   BorderSide(color: kPrimaryColor, width: 2),
//                             ),
//                           ),
//                         ),
//                       ),
//                       Container(
//                         margin: const EdgeInsets.only(bottom: 45),
//                         padding: const EdgeInsets.only(right: 5),
//                         alignment: Alignment.topRight,
//                         // color: Colors.green,
//                         height: 50,
//                         width: 400,
//                         child: TextButton(
//                           onPressed: () => {},
//                           child: const Text(
//                             "Forgot Password?",
//                             style: TextStyle(color: kPrimaryColor),
//                           ),
//                         ),
//                       ),
//                       Container(
//                         margin:
//                             const EdgeInsets.only(top: 60, left: 15, right: 15),
//                         alignment: Alignment.center,
//                         // color: Colors.pink,
//                         height: 50,
//                         width: 400,
//                         child: TextButton(
//                           onPressed: () => {
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                 builder: (context) => const MainScreen(),
//                               ),
//                             ),
//                           },
//                           child: const Text(
//                             "Login",
//                             style: TextStyle(
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 20),
//                           ),
//                         ),
//                         decoration: BoxDecoration(
//                           color: kPrimaryColor,
//                           borderRadius: BorderRadius.circular(50),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Container(
//                   alignment: Alignment.center,
//                   margin: const EdgeInsets.only(top: 10),
//                   // color: Colors.pink,
//                   height: size.height * .1,
//                   width: size.width,
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       const Text(
//                         "Don't have an account?",
//                         style: TextStyle(fontSize: 16),
//                       ),
//                       TextButton(
//                         onPressed: () => {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => const SignupPage(),
//                             ),
//                           ),
//                         },
//                         child: const Text(
//                           "Sign up",
//                           style: TextStyle(fontSize: 16, color: kPrimaryColor),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  SupabaseManager supabaseManager = SupabaseManager();

  // static var email;
  // static var password;

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //* To get the size of the screen
    double vicwInset = MediaQuery.of(context)
        .viewInsets
        .bottom; //* To Know that keyboard is open or not
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image:
                      AssetImage('assets/images/LoginPage_background(8%).png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    // color: Colors.amber,
                    height: size.height * .25,
                    width: size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Container(
                        //   padding: const EdgeInsets.only(left: 30),
                        //   // color: Colors.blue,
                        //   height: size.height * .2,
                        //   width: 200,
                        //   child: Column(
                        //     mainAxisAlignment: MainAxisAlignment.center,
                        //     crossAxisAlignment: CrossAxisAlignment.start,
                        //     children: const [
                        //       SizedBox(
                        //         height: 35,
                        //         child: FittedBox(
                        //           child: Text(
                        //             "Welcome to",
                        //             style: TextStyle(
                        //                 fontWeight: FontWeight.bold,
                        //                 color: Colors.black),
                        //           ),
                        //         ),
                        //       ),
                        //       SizedBox(
                        //         height: 40,
                        //         child: FittedBox(
                        //           child: Text("EDUZU",
                        //               style: TextStyle(
                        //                   fontWeight: FontWeight.bold,
                        //                   color: Colors.black)),
                        //         ),
                        //       ),
                        //     ],
                        //   ),
                        // ),
                        Container(
                          // TODO: Add LOGO
                          // color: Colors.pink,
                          margin: const EdgeInsets.only(left: 20, right: 20),
                          height: size.height * .2,
                          width: 150,
                          child: const Image(
                            image:
                                AssetImage('assets/images/onlylogo_white.png'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // color: Colors.blue,
                    height: size.height * .58,
                    width: size.width,
                    margin: const EdgeInsets.only(left: 20, right: 20),
                    // decoration: BoxDecoration(
                    //   color: kSecondaryColor,
                    //   borderRadius: BorderRadius.circular(20),
                    //   border: Border.all(width: 3, color: kPrimaryColor),
                    // ),
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 20),
                          alignment: Alignment.center,
                          // color: Colors.amber,
                          height: 50,
                          width: size.width,
                          child: const Text(
                            "Login",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: kPrimaryColor,
                                fontSize: 30),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              top: 60, left: 15, right: 15),
                          alignment: Alignment.center,
                          // color: Colors.blue,
                          height: 50,
                          width: 400,
                          child: TextFormField(
                            controller: _emailController,
                            cursorColor: kPrimaryColor,
                            decoration: const InputDecoration(
                              labelStyle: TextStyle(color: kPrimaryColor),
                              labelText: "Email",
                              hintText: "example@example.com",
                              fillColor: Colors.white,
                              filled: true,
                              prefixIcon: Icon(
                                Icons.mail,
                                color: kPrimaryColor,
                              ),
                              border: OutlineInputBorder(),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(50),
                                ),
                                borderSide:
                                    BorderSide(color: kPrimaryColor, width: 2),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(50),
                                ),
                                borderSide:
                                    BorderSide(color: kPrimaryColor, width: 2),
                              ),
                            ),
                            // validator: (String? value) {
                            //   if (value!.isEmpty || !value.contains('@')) {
                            //     return "Invalid e-mail";
                            //   }
                            //   return null;
                            // },
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              top: 20, left: 15, right: 15),
                          alignment: Alignment.center,
                          // color: Colors.red,
                          height: 50,
                          width: 400,
                          child: TextField(
                            controller: _passwordController,
                            obscureText: true,
                            cursorColor: kPrimaryColor,
                            decoration: const InputDecoration(
                              labelStyle: TextStyle(color: kPrimaryColor),
                              labelText: "Password",
                              hintText: "12345678",
                              fillColor: Colors.white,
                              filled: true,
                              prefixIcon: Icon(
                                Icons.security,
                                color: kPrimaryColor,
                              ),
                              border: OutlineInputBorder(),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(50),
                                ),
                                borderSide:
                                    BorderSide(color: kPrimaryColor, width: 2),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(50),
                                ),
                                borderSide:
                                    BorderSide(color: kPrimaryColor, width: 2),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 45),
                          padding: const EdgeInsets.only(right: 5),
                          alignment: Alignment.topRight,
                          // color: Colors.green,
                          height: 50,
                          width: 400,
                          child: TextButton(
                            onPressed: () => {},
                            child: const Text(
                              "Forgot Password?",
                              style: TextStyle(color: kPrimaryColor),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              top: 60, left: 15, right: 15),
                          alignment: Alignment.center,
                          // color: Colors.pink,
                          height: 50,
                          width: 400,
                          child: TextButton(
                            onPressed: () async {
                              print("Email: " + _emailController.text);
                              print("Password: " + _passwordController.text);

                              // supabaseManager.getData();

                              // try {
                              //   await supabaseManager.signInUser(
                              //       _emailController.text,
                              //       _passwordController.text);

                                
                              // } catch (e) {
                              //   ScaffoldMessenger.of(context).showSnackBar(
                              //     const SnackBar(
                              //       content: Text(
                              //           'Please enter valid email ID and password'),
                              //     ),
                              //   );
                              //   log('ERROR');
                              // }

                              log("Signed In");

                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const MainScreen(),
                                ),
                              ),
                            },
                            child: const Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: kPrimaryColor,
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(top: 10),
                    // color: Colors.pink,
                    height: size.height * .1,
                    width: size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        // const Text(
                        //   "Don't have an account?",
                        //   style: TextStyle(fontSize: 16),
                        // ),
                        // TextButton(
                        //   onPressed: () => {
                        //     Navigator.push(
                        //       context,
                        //       MaterialPageRoute(
                        //         builder: (context) => const SignupPage(),
                        //       ),
                        //     ),
                        //   },
                        //   child: const Text(
                        //     "Sign up",
                        //     style:
                        //         TextStyle(fontSize: 16, color: kPrimaryColor),
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
