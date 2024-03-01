import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:murious_appp/models/user.dart';
import 'package:murious_appp/screen/my_events/registered_events.dart';
import 'package:murious_appp/services/database.dart';
import 'package:murious_appp/services/databse1.dart';
import 'package:provider/provider.dart';

// class MyEvent extends StatefulWidget {
//   const MyEvent({super.key});

//   @override
//   State<MyEvent> createState() => _MyEventState();
// }

// class _MyEventState extends State<MyEvent> {
//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;
//     final user = Provider.of<UserObj?>(context);
//     return StreamProvider<DocumentSnapshot<Object?>?>.value(
//         initialData: null,
//         value: DatabaseServiceOne(uid: user!.uid).userdata,
//         child: Scaffold(
//             backgroundColor: Colors.transparent,
//             appBar: AppBar(
//               toolbarHeight: screenWidth *
//                   0.2, // Adjust toolbar height based on screen width
//               actions: [
//                 Padding(
//                   padding: EdgeInsets.fromLTRB(
//                       0,
//                       screenWidth * 0.025,
//                       screenWidth * 0.085,
//                       0), // Adjust padding based on screen width
//                   child: Image.asset(
//                     'assets/images/murious logo.png',
//                     width: screenWidth *
//                         0.12, // Adjust image size based on screen width
//                     height: screenWidth * 0.12,
//                   ),
//                 ),
//               ],
//               title: Padding(
//                 padding: EdgeInsets.fromLTRB(
//                     screenWidth * 0.02,
//                     screenWidth * 0.025,
//                     0,
//                     0), // Adjust padding based on screen width
//                 child: Text(
//                   'My Events',
//                   style: TextStyle(
//                     fontSize: screenWidth *
//                         0.12, // Adjust font size based on screen width
//                     fontWeight: FontWeight.bold,
//                     fontFamily: 'Murious',
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
//               backgroundColor: Colors.transparent,
//               elevation: 0,
//             ),
//             body: RegisteredEvents(uid: user.uid)
// Center(
//   child: Container(
//     alignment: Alignment.center,
//     child: Text(
//       'No Events',
//       style:
//           TextStyle(color: Colors.white, fontSize: screenWidth * 0.1),
//     ),
//     width: screenWidth * .9,
//     height: screenWidth * 1.2,
//     decoration: ShapeDecoration(
//       gradient: LinearGradient(
//         begin: Alignment(-0.00, -1.00),
//         end: Alignment(0, 1),
//         colors: [Color(0xFF3E0858), Color(0xFF38022C)],
//       ),
//       shape: RoundedRectangleBorder(
//         side:
//             BorderSide(width: screenWidth * 0.005, color: Colors.white),
//         borderRadius: BorderRadius.circular(screenWidth * 0.06),
//       ),
//     ),
//   ),
// ),),
//             ));
//   }
// }

// class MyEvent extends StatefulWidget {
//   const MyEvent({Key? key});

//   @override
//   State<MyEvent> createState() => _MyEventState();
// }

// class _MyEventState extends State<MyEvent> {
//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;
//     final user = Provider.of<UserObj?>(context);
//     return StreamProvider<List<QuerySnapshot>>.value(
//       initialData: [],
//       value: DatabaseService(uid: user!.uid).murious,
//       child: Scaffold(
//         backgroundColor: Colors.transparent,
//         appBar: AppBar(
//           toolbarHeight: screenWidth * 0.2,
//           actions: [
//             Padding(
//               padding: EdgeInsets.fromLTRB(
//                   0, screenWidth * 0.025, screenWidth * 0.085, 0),
//               child: Image.asset(
//                 'assets/images/murious logo.png',
//                 width: screenWidth * 0.12,
//                 height: screenWidth * 0.12,
//               ),
//             ),
//           ],
//           title: Padding(
//             padding: EdgeInsets.fromLTRB(
//                 screenWidth * 0.02, screenWidth * 0.025, 0, 0),
//             child: Text(
//               'My Events',
//               style: TextStyle(
//                 fontSize: screenWidth * 0.12,
//                 fontWeight: FontWeight.bold,
//                 fontFamily: 'Murious',
//                 color: Colors.white,
//               ),
//             ),
//           ),
//           backgroundColor: Colors.transparent,
//           elevation: 0,
//         ),
//         body: RegisteredEvents(uid: user.uid),
//       ),
//     );
//   }
// }

class MyEvent extends StatefulWidget {
  const MyEvent({Key? key});

  @override
  State<MyEvent> createState() => _MyEventState();
}

class _MyEventState extends State<MyEvent> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final user = Provider.of<UserObj?>(context);
    return
        // StreamProvider<List<QuerySnapshot>>.value(
        // initialData: [],
        // value: DatabaseService(uid: user!.uid).murious,
        // child:
        Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        toolbarHeight: screenWidth * 0.2,
        actions: [
          Padding(
            padding: EdgeInsets.fromLTRB(
                0, screenWidth * 0.025, screenWidth * 0.085, 0),
            child: Image.asset(
              'assets/images/murious logo.png',
              width: screenWidth * 0.12,
              height: screenWidth * 0.12,
            ),
          ),
        ],
        title: Padding(
          padding: EdgeInsets.fromLTRB(
              screenWidth * 0.02, screenWidth * 0.025, 0, 0),
          child: Text(
            'My Events',
            style: TextStyle(
              fontSize: screenWidth * 0.12,
              fontWeight: FontWeight.bold,
              fontFamily: 'Murious',
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: RegisteredEvents(uid: user!.uid),
    );
    // );
  }
}
