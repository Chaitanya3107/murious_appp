// import 'package:flutter/material.dart';
// import 'package:murious_appp/screen/contact/contact.dart';
// import 'package:murious_appp/screen/feedback/feedback.dart';
// import 'package:murious_appp/services/auth.dart';

// class ProfiileContainer extends StatefulWidget {
//   const ProfiileContainer({super.key});

//   @override
//   State<ProfiileContainer> createState() => _ProfiileContainerState();
// }

// final AuthService _auth = AuthService();

// class _ProfiileContainerState extends State<ProfiileContainer> {
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Center(
//         child: Padding(
//           // padding: const EdgeInsets.all(20),
//           padding: EdgeInsets.fromLTRB(20, 50, 20, 30),
//           child: Column(
//             children: [
//               Row(
//                 children: [
//                   const Padding(
//                     padding: EdgeInsets.symmetric(horizontal: 55, vertical: 30),
//                     child: Text(
//                       'Settings',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 25,
//                         fontFamily: 'Poppins',
//                         fontWeight: FontWeight.w500,
//                         height: 0,
//                       ),
//                     ),
//                   ),
//                   IconButton(
//                     padding: const EdgeInsets.fromLTRB(80, 0, 0, 0),
//                     icon: const Icon(
//                       Icons.arrow_forward,
//                       color: Colors.white,
//                     ),
//                     onPressed: () {
//                       // Add your onPressed logic here
//                     },
//                     color: Colors.white,
//                     iconSize: 40,
//                   ),
//                 ],
//               ),
//               Container(
//                 width: 300,
//                 decoration: const ShapeDecoration(
//                   shape: RoundedRectangleBorder(
//                     side: BorderSide(
//                       width: 1,
//                       strokeAlign: BorderSide.strokeAlignCenter,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//               ),
//               Row(
//                 children: [
//                   const Padding(
//                     padding: EdgeInsets.symmetric(horizontal: 55, vertical: 30),
//                     child: Text(
//                       'Feedback',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 25,
//                         fontFamily: 'Poppins',
//                         fontWeight: FontWeight.w500,
//                         height: 0,
//                       ),
//                     ),
//                   ),
//                   IconButton(
//                     padding: const EdgeInsets.fromLTRB(70, 0, 0, 0),
//                     icon: const Icon(
//                       Icons.arrow_forward,
//                       color: Colors.white,
//                     ),
//                     onPressed: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => const FeedbackUi(),
//                         ),
//                       );
//                     },
//                     color: Colors.white,
//                     iconSize: 40,
//                   ),
//                 ],
//               ),
//               Container(
//                 width: 300,
//                 decoration: const ShapeDecoration(
//                   shape: RoundedRectangleBorder(
//                     side: BorderSide(
//                       width: 1,
//                       strokeAlign: BorderSide.strokeAlignCenter,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//               ),
//               Row(
//                 children: [
//                   const Padding(
//                     padding: EdgeInsets.symmetric(horizontal: 55, vertical: 30),
//                     child: Text(
//                       'Contact Us',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 25,
//                         fontFamily: 'Poppins',
//                         fontWeight: FontWeight.w500,
//                         height: 0,
//                       ),
//                     ),
//                   ),
//                   IconButton(
//                     padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
//                     icon: const Icon(
//                       Icons.arrow_forward,
//                       color: Colors.white,
//                     ),
//                     onPressed: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => const ContactUs(),
//                         ),
//                       );
//                     },
//                     color: Colors.white,
//                     iconSize: 40,
//                   ),
//                 ],
//               ),
//               Container(
//                 width: 300,
//                 decoration: const ShapeDecoration(
//                   shape: RoundedRectangleBorder(
//                     side: BorderSide(
//                       width: 1,
//                       strokeAlign: BorderSide.strokeAlignCenter,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//               ),
//               Row(
//                 children: [
//                   IconButton(
//                     padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
//                     icon: const Icon(
//                       Icons.logout,
//                       color: Colors.white,
//                     ),
//                     onPressed: () async {
//                       await _auth.signOutGoogle();
//                     },
//                     color: Colors.white,
//                     iconSize: 40,
//                   ),
//                   Padding(
//                     padding: EdgeInsets.all(40),
//                     child: ElevatedButton(
//                       onPressed: () async {
//                         await _auth.signOutGoogle();
//                       },
//                       child: const Text(
//                         "Logout",
//                         style: TextStyle(
//                           backgroundColor: Colors.transparent,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 20,
//                         ),
//                       ),
//                     ),
//                     // Text(
//                     //   'Logout',
//                     //   style: TextStyle(
//                     //     color: Colors.white,
//                     //     fontSize: 25,
//                     //     fontFamily: 'Poppins',
//                     //     fontWeight: FontWeight.w500,
//                     //     height: 0,
//                     //   ),
//                     // ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:murious_appp/screen/contact/contact.dart';
import 'package:murious_appp/screen/feedback/feedback.dart';
import 'package:murious_appp/services/auth.dart';

class ProfiileContainer extends StatefulWidget {
  const ProfiileContainer({Key? key});

  @override
  State<ProfiileContainer> createState() => _ProfiileContainerState();
}

final AuthService _auth = AuthService();

class _ProfiileContainerState extends State<ProfiileContainer> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
      child: Center(
        child: Padding(
          // padding: EdgeInsets.fromLTRB(screenWidth * 0.05, screenWidth * 0.1,
          //     screenWidth * 0.05, screenWidth * 0.15),
          padding: EdgeInsets.symmetric(
              horizontal: screenWidth * 0.05, vertical: screenWidth * 0.03),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      // padding: EdgeInsets.symmetric(
                      //     horizontal: screenWidth * 0.05,
                      //     vertical: screenWidth * 0.08),
                      padding: EdgeInsets.fromLTRB(screenWidth * 0.08,
                          screenWidth * 0.08, 0, screenWidth * 0.1),
                      child: Text(
                        'Settings',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: screenWidth * 0.062,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ),
                    IconButton(
                      padding: EdgeInsets.fromLTRB(screenWidth * 0.26, 0, 0, 0),
                      icon: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        // Add your onPressed logic here
                      },
                      color: Colors.white,
                      iconSize: screenWidth * 0.09,
                    ),
                  ],
                ),
                Container(
                  width: screenWidth * 0.625,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: screenWidth * 0.0025,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      // padding: EdgeInsets.symmetric(
                      //     horizontal: screenWidth * 0.2,
                      //     vertical: screenWidth * 0.15),
                      padding: EdgeInsets.fromLTRB(screenWidth * 0.08,
                          screenWidth * 0.08, 0, screenWidth * 0.1),
                      child: Text(
                        'Feedback',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: screenWidth * 0.062,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ),
                    IconButton(
                      padding: EdgeInsets.fromLTRB(screenWidth * 0.23, 0, 0, 0),
                      icon: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const FeedbackUi(),
                          ),
                        );
                      },
                      color: Colors.white,
                      iconSize: screenWidth * 0.09,
                    ),
                  ],
                ),
                Container(
                  width: screenWidth * 0.625,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: screenWidth * 0.0025,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      // padding: EdgeInsets.symmetric(
                      //     horizontal: screenWidth * 0.2,
                      //     vertical: screenWidth * 0.15),
                      padding: EdgeInsets.fromLTRB(screenWidth * 0.08,
                          screenWidth * 0.08, 0, screenWidth * 0.1),
                      child: Text(
                        'Contact Us',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: screenWidth * 0.062,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ),
                    IconButton(
                      padding: EdgeInsets.fromLTRB(screenWidth * 0.22, 0, 0, 0),
                      icon: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ContactUs(),
                          ),
                        );
                      },
                      color: Colors.white,
                      iconSize: screenWidth * 0.09,
                    ),
                  ],
                ),
                Container(
                  width: screenWidth * 0.625,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: screenWidth * 0.0025,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      // padding: EdgeInsets.symmetric(
                      //     horizontal: screenWidth * 0.2,
                      //     vertical: screenWidth * 0.15),
                      padding: EdgeInsets.fromLTRB(screenWidth * 0.08,
                          screenWidth * 0.08, 0, screenWidth * 0.1),
                      child: Text(
                        'FAQs',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: screenWidth * 0.062,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ),
                    IconButton(
                      padding: EdgeInsets.fromLTRB(screenWidth * 0.35, 0, 0, 0),
                      icon: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ContactUs(),
                          ),
                        );
                      },
                      color: Colors.white,
                      iconSize: screenWidth * 0.09,
                    ),
                  ],
                ),
                Container(
                  width: screenWidth * 0.625,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: screenWidth * 0.0025,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      padding: EdgeInsets.fromLTRB(screenWidth * 0.2, 0, 0, 0),
                      icon: Icon(
                        Icons.logout,
                        color: Colors.white,
                      ),
                      onPressed: () async {
                        await _auth.signOutGoogle();
                      },
                      color: Colors.white,
                      iconSize: screenWidth * 0.09,
                    ),
                    Padding(
                      // padding: EdgeInsets.all(screenWidth * 0.015),
                      padding: EdgeInsets.symmetric(
                          horizontal: screenWidth * 0.08,
                          vertical: screenWidth * 0.065),
                      child: ElevatedButton(
                        onPressed: () async {
                          await _auth.signOutGoogle();
                        },
                        child: const Text(
                          "Logout",
                          style: TextStyle(
                            backgroundColor: Colors.transparent,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
