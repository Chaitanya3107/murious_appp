// // import 'package:cloud_firestore/cloud_firestore.dart';
// // import 'package:flutter/material.dart';
// // import 'package:murious_appp/screen/profile/profile_content.dart';
// // import 'package:provider/provider.dart';

// // class ProfilePage extends StatefulWidget {
// //   const ProfilePage({Key? key}) : super(key: key);

// //   @override
// //   State<ProfilePage> createState() => _ProfilePageState();
// // }

// // class _ProfilePageState extends State<ProfilePage> {
// //   @override
// //   Widget build(BuildContext context) {
// //     final screenWidth = MediaQuery.of(context).size.width;
// //     final screenHeight = MediaQuery.of(context).size.height;

// //     return Scaffold(
// //       backgroundColor: Colors.transparent,
// //       body: ListView(
// //         // Wrap the content with ListView
// //         children: [
// //           Center(
// //             child: Column(
// //               mainAxisAlignment: MainAxisAlignment.center,
// //               crossAxisAlignment: CrossAxisAlignment.center,
// //               children: [
// //                 Column(
// //                   children: [
// //                     Padding(
// //                       // padding: EdgeInsets.only(bottom: screenWidth * 0.05),
// //                       // padding: EdgeInsets.symmetric(
// //                       //     horizontal: screenWidth * 0.01,
// //                       //     vertical: screenWidth * 0.14),
// //                       padding: EdgeInsets.fromLTRB(
// //                           screenWidth * 0.01,
// //                           screenWidth * 0.15,
// //                           screenWidth * 0.01,
// //                           screenWidth * 0.08),
// //                       child: Text(
// //                         'Name',
// //                         style: TextStyle(
// //                           color: Colors.white,
// //                           fontSize: screenWidth * 0.08,
// //                           fontFamily: 'Murious',
// //                           fontWeight: FontWeight.w400,
// //                           height: 0,
// //                         ),
// //                       ),
// //                     ),
// //                     Padding(
// //                       padding: EdgeInsets.all(screenWidth * 0.05),
// //                       child: Container(
// //                         width: double.infinity,
// //                         height: screenHeight * 0.65, // Adjusted height
// //                         decoration: BoxDecoration(
// //                           gradient: LinearGradient(
// //                             begin: Alignment(-0.00, -1.00),
// //                             end: Alignment(0, 1),
// //                             colors: [Color(0xFF3E0858), Color(0xFF38022C)],
// //                           ),
// //                           borderRadius:
// //                               BorderRadius.circular(screenWidth * 0.06),
// //                           border: Border.all(
// //                             width: screenWidth * 0.005,
// //                             // color: Colors.white
// //                           ),
// //                           boxShadow: [
// //                             BoxShadow(
// //                               color: Color.fromARGB(255, 223, 213, 213),
// //                               offset: const Offset(
// //                                 2,
// //                                 2,
// //                               ),
// //                               blurRadius: 0,
// //                               spreadRadius: 0,
// //                             ), //BoxShadow
// //                             BoxShadow(
// //                               color: const Color.fromARGB(255, 223, 213, 213),
// //                               offset: const Offset(2.0, -0.1),
// //                               blurRadius: 0.0,
// //                               spreadRadius: 0.0,
// //                             ), //BoxShadow
// //                           ],
// //                         ),
// //                         child: const ProfiileContainer(),
// //                       ),
// //                     ),
// //                   ],
// //                 ),
// //               ],
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:murious_appp/models/user.dart';
// import 'package:murious_appp/screen/profile/profile_content.dart';
// import 'package:murious_appp/services/database.dart';
// import 'package:provider/provider.dart';

// class ProfilePage extends StatefulWidget {
//   const ProfilePage({Key? key}) : super(key: key);

//   @override
//   State<ProfilePage> createState() => _ProfilePageState();
// }

// class _ProfilePageState extends State<ProfilePage> {
//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;
//     final screenHeight = MediaQuery.of(context).size.height;
//     final user = Provider.of<UserObj?>(context);

//     return Scaffold(
//       backgroundColor: Colors.transparent,
//       body: StreamBuilder<DocumentSnapshot>(
//         stream: DatabaseService(uid: user!.uid)
//             .murious, // Use the murious stream from DatabaseService
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(
//                 child:
//                     CircularProgressIndicator()); // Show loading indicator while waiting for data
//           }

//           if (!snapshot.hasData) {
//             return Center(
//                 child: Text('Name')); // Handle case where there is no data
//           }

//           // Access data from the snapshot
//           final userData = snapshot.data!.data() as Map<String, dynamic>? ?? {};
//           final String? username = userData['Username'] as String?;

//           return ListView(
//             children: [
//               Center(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Padding(
//                       padding: EdgeInsets.fromLTRB(screenWidth * 0.05,
//                           screenWidth * 0.34, screenWidth * 0.05, 0),
//                       child: Container(
//                         width: double.infinity,
//                         height: screenHeight * 0.65,
//                         decoration: BoxDecoration(
//                           gradient: LinearGradient(
//                             begin: Alignment(-0.00, -1.00),
//                             end: Alignment(0, 1),
//                             colors: [Color(0xFF3E0858), Color(0xFF38022C)],
//                           ),
//                           borderRadius:
//                               BorderRadius.circular(screenWidth * 0.06),
//                           border: Border.all(
//                             width: screenWidth * 0.005,
//                           ),
//                           boxShadow: [
//                             BoxShadow(
//                               color: Color.fromARGB(255, 223, 213, 213),
//                               offset: const Offset(2, 2),
//                               blurRadius: 0,
//                               spreadRadius: 0,
//                             ),
//                             BoxShadow(
//                               color: const Color.fromARGB(255, 223, 213, 213),
//                               offset: const Offset(2.0, -0.1),
//                               blurRadius: 0.0,
//                               spreadRadius: 0.0,
//                             ),
//                           ],
//                         ),
//                         child: const ProfiileContainer(),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           );
//         },
//       ),
//     );
//   }
// }

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:murious_appp/screen/profile/profile_content.dart';
// import 'package:provider/provider.dart';

// class ProfilePage extends StatefulWidget {
//   const ProfilePage({Key? key}) : super(key: key);

//   @override
//   State<ProfilePage> createState() => _ProfilePageState();
// }

// class _ProfilePageState extends State<ProfilePage> {
//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;
//     final screenHeight = MediaQuery.of(context).size.height;

//     return Scaffold(
//       backgroundColor: Colors.transparent,
//       body: ListView(
//         // Wrap the content with ListView
//         children: [
//           Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Column(
//                   children: [
//                     Padding(
//                       // padding: EdgeInsets.only(bottom: screenWidth * 0.05),
//                       // padding: EdgeInsets.symmetric(
//                       //     horizontal: screenWidth * 0.01,
//                       //     vertical: screenWidth * 0.14),
//                       padding: EdgeInsets.fromLTRB(
//                           screenWidth * 0.01,
//                           screenWidth * 0.15,
//                           screenWidth * 0.01,
//                           screenWidth * 0.08),
//                       child: Text(
//                         'Name',
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: screenWidth * 0.08,
//                           fontFamily: 'Murious',
//                           fontWeight: FontWeight.w400,
//                           height: 0,
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: EdgeInsets.all(screenWidth * 0.05),
//                       child: Container(
//                         width: double.infinity,
//                         height: screenHeight * 0.65, // Adjusted height
//                         decoration: BoxDecoration(
//                           gradient: LinearGradient(
//                             begin: Alignment(-0.00, -1.00),
//                             end: Alignment(0, 1),
//                             colors: [Color(0xFF3E0858), Color(0xFF38022C)],
//                           ),
//                           borderRadius:
//                               BorderRadius.circular(screenWidth * 0.06),
//                           border: Border.all(
//                             width: screenWidth * 0.005,
//                             // color: Colors.white
//                           ),
//                           boxShadow: [
//                             BoxShadow(
//                               color: Color.fromARGB(255, 223, 213, 213),
//                               offset: const Offset(
//                                 2,
//                                 2,
//                               ),
//                               blurRadius: 0,
//                               spreadRadius: 0,
//                             ), //BoxShadow
//                             BoxShadow(
//                               color: const Color.fromARGB(255, 223, 213, 213),
//                               offset: const Offset(2.0, -0.1),
//                               blurRadius: 0.0,
//                               spreadRadius: 0.0,
//                             ), //BoxShadow
//                           ],
//                         ),
//                         child: const ProfiileContainer(),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:murious_appp/models/user.dart';
import 'package:murious_appp/screen/profile/profile_content.dart';
import 'package:provider/provider.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final user = Provider.of<UserObj?>(context);

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: ListView(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(screenWidth * 0.05,
                      screenWidth * 0.34, screenWidth * 0.05, 0),
                  child: Container(
                    width: double.infinity,
                    height: screenHeight * 0.65,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(-0.00, -1.00),
                        end: Alignment(0, 1),
                        colors: [Color(0xFF3E0858), Color(0xFF38022C)],
                      ),
                      borderRadius: BorderRadius.circular(screenWidth * 0.06),
                      border: Border.all(
                        width: screenWidth * 0.005,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 223, 213, 213),
                          offset: const Offset(2, 2),
                          blurRadius: 0,
                          spreadRadius: 0,
                        ),
                        BoxShadow(
                          color: const Color.fromARGB(255, 223, 213, 213),
                          offset: const Offset(2.0, -0.1),
                          blurRadius: 0.0,
                          spreadRadius: 0.0,
                        ),
                      ],
                    ),
                    child: const ProfiileContainer(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
