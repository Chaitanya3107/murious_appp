// import 'package:flutter/material.dart';
// import 'package:murious_appp/screen/profile/profile.dart';

// class AppSetting extends StatefulWidget {
//   const AppSetting({Key? key});

//   @override
//   State<AppSetting> createState() => _AppSettingState();
// }

// class _AppSettingState extends State<AppSetting> {
//   bool _notificationsEnabled = true; // Track notification status

//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;
//     return Scaffold(
//       backgroundColor: Colors.transparent,
//       appBar: AppBar(
//         toolbarHeight: 80,
//         leading: IconButton(
//           padding: EdgeInsets.fromLTRB(screenWidth * 0.05, 10, 0, 0),
//           icon: const Icon(
//             Icons.arrow_back,
//             color: Colors.white,
//           ),
//           onPressed: () {
//             Navigator.pop(
//               context,
//               MaterialPageRoute(
//                 builder: (context) => const ProfilePage(),
//               ),
//             );
//           },
//           color: Colors.white,
//           iconSize: screenWidth * 0.11,
//         ),
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Padding(
//               padding: EdgeInsets.fromLTRB(screenWidth * 0.1, 10, 0, 10),
//               child: Text(
//                 'App Setting',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: screenWidth * 0.13,
//                   fontFamily: 'Poppins',
//                   fontWeight: FontWeight.w600,
//                   height: 0,
//                 ),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.fromLTRB(
//                 screenWidth * 0.025,
//                 screenWidth * 0.05,
//                 screenWidth * 0.025,
//                 screenWidth * 0.03,
//               ),
//               child: GestureDetector(
//                 onTap: () {
//                   setState(() {
//                     _notificationsEnabled = !_notificationsEnabled;
//                   });
//                 },
//                 child: Container(
//                   width: double.infinity,
//                   height: screenWidth * 0.2,
//                   decoration: ShapeDecoration(
//                     gradient: LinearGradient(
//                       begin: Alignment(-0.00, -1.00),
//                       end: Alignment(0, 1),
//                       colors: [Color(0xFF3E0858), Color(0xFF38022C)],
//                     ),
//                     shape: RoundedRectangleBorder(
//                       side: BorderSide(
//                           width: screenWidth * 0.005, color: Colors.white),
//                       borderRadius: BorderRadius.circular(screenWidth * 0.06),
//                     ),
//                   ),
//                   child: Row(
//                     children: [
//                       Padding(
//                         padding: EdgeInsets.only(left: 20),
//                         child: Text(
//                           "Notifications",
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: screenWidth * 0.08,
//                             fontFamily: 'Poppins',
//                             fontWeight: FontWeight.w600,
//                             height: 0,
//                           ),
//                         ),
//                       ),
//                       Spacer(),
//                       Padding(
//                         padding: EdgeInsets.only(right: 10),
//                         child: IconButton(
//                           onPressed: () {
//                             setState(() {
//                               _notificationsEnabled = !_notificationsEnabled;
//                             });
//                           },
//                           icon: Icon(
//                             color: Colors.white,
//                             size: screenWidth * 0.09,
//                             _notificationsEnabled
//                                 ? Icons.check_box_outlined
//                                 : Icons.check_box_outline_blank,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:murious_appp/screen/profile/profile.dart';

// typedef NotificationStatusCallback = void Function(bool isEnabled);

// class AppSetting extends StatefulWidget {
//   const AppSetting({Key? key, required this.notificationStatusCallback});

//   final NotificationStatusCallback notificationStatusCallback;

//   @override
//   State<AppSetting> createState() => _AppSettingState();
// }

// class _AppSettingState extends State<AppSetting> {
//   bool _notificationsEnabled = true; // Track notification status

//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;
//     return Scaffold(
//       backgroundColor: Colors.transparent,
//       appBar: AppBar(
//         toolbarHeight: 80,
//         leading: IconButton(
//           padding: EdgeInsets.fromLTRB(screenWidth * 0.05, 10, 0, 0),
//           icon: const Icon(
//             Icons.arrow_back,
//             color: Colors.white,
//           ),
//           onPressed: () {
//             Navigator.pop(
//               context,
//               MaterialPageRoute(
//                 builder: (context) => const ProfilePage(),
//               ),
//             );
//           },
//           color: Colors.white,
//           iconSize: screenWidth * 0.11,
//         ),
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Padding(
//               padding: EdgeInsets.fromLTRB(screenWidth * 0.1, 10, 0, 10),
//               child: Text(
//                 'App Setting',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: screenWidth * 0.13,
//                   fontFamily: 'Poppins',
//                   fontWeight: FontWeight.w600,
//                   height: 0,
//                 ),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.fromLTRB(
//                 screenWidth * 0.025,
//                 screenWidth * 0.05,
//                 screenWidth * 0.025,
//                 screenWidth * 0.03,
//               ),
//               child: GestureDetector(
//                 onTap: () {
//                   setState(() {
//                     _notificationsEnabled = !_notificationsEnabled;
//                     widget.notificationStatusCallback(_notificationsEnabled);
//                   });
//                 },
//                 child: Container(
//                   width: double.infinity,
//                   height: screenWidth * 0.2,
//                   decoration: ShapeDecoration(
//                     gradient: LinearGradient(
//                       begin: Alignment(-0.00, -1.00),
//                       end: Alignment(0, 1),
//                       colors: [Color(0xFF3E0858), Color(0xFF38022C)],
//                     ),
//                     shape: RoundedRectangleBorder(
//                       side: BorderSide(
//                           width: screenWidth * 0.005, color: Colors.white),
//                       borderRadius: BorderRadius.circular(screenWidth * 0.06),
//                     ),
//                   ),
//                   child: Row(
//                     children: [
//                       Padding(
//                         padding: EdgeInsets.only(left: 20),
//                         child: Text(
//                           "Notifications",
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: screenWidth * 0.08,
//                             fontFamily: 'Poppins',
//                             fontWeight: FontWeight.w600,
//                             height: 0,
//                           ),
//                         ),
//                       ),
//                       Spacer(),
//                       Padding(
//                         padding: EdgeInsets.only(right: 10),
//                         child: IconButton(
//                           onPressed: () {
//                             setState(() {
//                               _notificationsEnabled = !_notificationsEnabled;
//                               widget.notificationStatusCallback(
//                                   _notificationsEnabled);
//                             });
//                           },
//                           icon: Icon(
//                             color: Colors.white,
//                             size: screenWidth * 0.09,
//                             _notificationsEnabled
//                                 ? Icons.check_box_outlined
//                                 : Icons.check_box_outline_blank,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:murious_appp/screen/profile/profile.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class AppSetting extends StatefulWidget {
//   const AppSetting({Key? key, required this.notificationStatusCallback});

//   final NotificationStatusCallback notificationStatusCallback;

//   @override
//   State<AppSetting> createState() => _AppSettingState();
// }

// class _AppSettingState extends State<AppSetting> {
//   late bool _notificationsEnabled; // Track notification status

//   @override
//   void initState() {
//     super.initState();
//     _notificationsEnabled = widget.notificationsEnabled;
//   }

//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;
//     return Scaffold(
//       backgroundColor: Colors.transparent,
//       appBar: AppBar(
//         toolbarHeight: 80,
//         leading: IconButton(
//           padding: EdgeInsets.fromLTRB(screenWidth * 0.05, 10, 0, 0),
//           icon: const Icon(
//             Icons.arrow_back,
//             color: Colors.white,
//           ),
//           onPressed: () {
//             Navigator.pop(
//               context,
//               MaterialPageRoute(
//                 builder: (context) => const ProfilePage(),
//               ),
//             );
//           },
//           color: Colors.white,
//           iconSize: screenWidth * 0.11,
//         ),
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Padding(
//               padding: EdgeInsets.fromLTRB(screenWidth * 0.1, 10, 0, 10),
//               child: Text(
//                 'App Setting',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: screenWidth * 0.13,
//                   fontFamily: 'Poppins',
//                   fontWeight: FontWeight.w600,
//                   height: 0,
//                 ),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.fromLTRB(
//                 screenWidth * 0.025,
//                 screenWidth * 0.05,
//                 screenWidth * 0.025,
//                 screenWidth * 0.03,
//               ),
//               child: GestureDetector(
//                 onTap: () {
//                   setState(() {
//                     _notificationsEnabled = !_notificationsEnabled;
//                     widget.notificationStatusCallback(_notificationsEnabled);
//                     // Save the notification state to shared preferences
//                     SharedPreferences.getInstance().then((prefs) {
//                       prefs.setBool(
//                           'notificationsEnabled', _notificationsEnabled);
//                     });
//                   });
//                 },
//                 child: Container(
//                   width: double.infinity,
//                   height: screenWidth * 0.2,
//                   decoration: ShapeDecoration(
//                     gradient: LinearGradient(
//                       begin: Alignment(-0.00, -1.00),
//                       end: Alignment(0, 1),
//                       colors: [Color(0xFF3E0858), Color(0xFF38022C)],
//                     ),
//                     shape: RoundedRectangleBorder(
//                       side: BorderSide(
//                           width: screenWidth * 0.005, color: Colors.white),
//                       borderRadius: BorderRadius.circular(screenWidth * 0.06),
//                     ),
//                   ),
//                   child: Row(
//                     children: [
//                       Padding(
//                         padding: EdgeInsets.only(left: 20),
//                         child: Text(
//                           "Notifications",
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: screenWidth * 0.08,
//                             fontFamily: 'Poppins',
//                             fontWeight: FontWeight.w600,
//                             height: 0,
//                           ),
//                         ),
//                       ),
//                       Spacer(),
//                       Padding(
//                         padding: EdgeInsets.only(right: 10),
//                         child: IconButton(
//                           onPressed: () {
//                             setState(() {
//                               _notificationsEnabled = !_notificationsEnabled;
//                               widget.notificationStatusCallback(
//                                   _notificationsEnabled);
//                               // Save the notification state to shared preferences
//                               SharedPreferences.getInstance().then((prefs) {
//                                 prefs.setBool('notificationsEnabled',
//                                     _notificationsEnabled);
//                               });
//                             });
//                           },
//                           icon: Icon(
//                             color: Colors.white,
//                             size: screenWidth * 0.09,
//                             _notificationsEnabled
//                                 ? Icons.check_box_outlined
//                                 : Icons.check_box_outline_blank,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:murious_appp/screen/profile/profile.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// typedef NotificationStatusCallback = void Function(bool isEnabled);

// class AppSetting extends StatefulWidget {
//   const AppSetting({
//     Key? key,
//     // required this.notificationStatusCallback
//   });

//   // final NotificationStatusCallback notificationStatusCallback;

//   @override
//   State<AppSetting> createState() => _AppSettingState();
// }

// class _AppSettingState extends State<AppSetting> {
//   // bool _notificationsEnabled = true; // Track notification status

//   @override
//   void initState() {
//     super.initState();
//     // _loadNotificationStatus();
//   }

//   // Future<void> _loadNotificationStatus() async {
//   //   final prefs = await SharedPreferences.getInstance();
//   //   _notificationsEnabled = prefs.getBool('notificationsEnabled') ?? true;
//   //   setState(() {});
//   // }

//   Future<void> _saveNotificationStatus(bool isEnabled) async {
//     final prefs = await SharedPreferences.getInstance();
//     await prefs.setBool('notificationsEnabled', isEnabled);
//     // widget.notificationStatusCallback(isEnabled);
//   }

//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;
//     return Scaffold(
//       backgroundColor: Colors.transparent,
//       appBar: AppBar(
//         toolbarHeight: 80,
//         leading: IconButton(
//           padding: EdgeInsets.fromLTRB(screenWidth * 0.05, 10, 0, 0),
//           icon: const Icon(
//             Icons.arrow_back,
//             color: Colors.white,
//           ),
//           onPressed: () {
//             Navigator.pop(
//               context,
//               MaterialPageRoute(
//                 builder: (context) => const ProfilePage(),
//               ),
//             );
//           },
//           color: Colors.white,
//           iconSize: screenWidth * 0.11,
//         ),
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Padding(
//               padding: EdgeInsets.fromLTRB(screenWidth * 0.1, 10, 0, 10),
//               child: Text(
//                 'App Setting',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: screenWidth * 0.13,
//                   fontFamily: 'Poppins',
//                   fontWeight: FontWeight.w600,
//                   height: 0,
//                 ),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.fromLTRB(
//                 screenWidth * 0.025,
//                 screenWidth * 0.05,
//                 screenWidth * 0.025,
//                 screenWidth * 0.03,
//               ),
//               child: GestureDetector(
//                 onTap: () {
//                   setState(() {
//                     // _notificationsEnabled = !_notificationsEnabled;
//                     // _saveNotificationStatus(_notificationsEnabled);
//                   });
//                 },
//                 child: Container(
//                   width: double.infinity,
//                   height: screenWidth * 0.2,
//                   decoration: ShapeDecoration(
//                     gradient: LinearGradient(
//                       begin: Alignment(-0.00, -1.00),
//                       end: Alignment(0, 1),
//                       colors: [Color(0xFF3E0858), Color(0xFF38022C)],
//                     ),
//                     shape: RoundedRectangleBorder(
//                       side: BorderSide(
//                           width: screenWidth * 0.005, color: Colors.white),
//                       borderRadius: BorderRadius.circular(screenWidth * 0.06),
//                     ),
//                   ),
//                   child: Row(
//                     children: [
//                       Padding(
//                         padding: EdgeInsets.only(left: 20),
//                         child: Text(
//                           "Notifications",
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: screenWidth * 0.08,
//                             fontFamily: 'Poppins',
//                             fontWeight: FontWeight.w600,
//                             height: 0,
//                           ),
//                         ),
//                       ),
//                       Spacer(),
//                       Padding(
//                         padding: EdgeInsets.only(right: 10),
//                         child: IconButton(
//                           onPressed: () {
//                             setState(() {
//                               // _notificationsEnabled = !_notificationsEnabled;
//                               // _saveNotificationStatus(_notificationsEnabled);
//                             });
//                           },
//                           icon: Icon(
//                             color: Colors.white,
//                             size: screenWidth * 0.09,
//                             // _notificationsEnabled
//                             // ? Icons.check_box_outlined
//                             // :
//                             Icons.check_box_outline_blank,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// typedef NotificationStatusCallback = void Function(bool isEnabled);

// class AppSetting extends StatefulWidget {
//   const AppSetting({
//     Key? key,
//     required this.notificationStatusCallback,
//   });

//   final NotificationStatusCallback notificationStatusCallback;

//   @override
//   State<AppSetting> createState() => _AppSettingState();
// }

// class _AppSettingState extends State<AppSetting> {
//   late bool _notificationsEnabled; // Track notification status

//   @override
//   void initState() {
//     super.initState();
//     _loadNotificationStatus();
//   }

//   Future<void> _loadNotificationStatus() async {
//     final prefs = await SharedPreferences.getInstance();
//     _notificationsEnabled = prefs.getBool('notificationsEnabled') ?? true;
//     setState(() {});
//   }

//   Future<void> _saveNotificationStatus(bool isEnabled) async {
//     final prefs = await SharedPreferences.getInstance();
//     await prefs.setBool('notificationsEnabled', isEnabled);
//     widget.notificationStatusCallback(isEnabled); // Notify the parent widget
//   }

//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;
//     return Scaffold(
//       backgroundColor: Colors.transparent,
//       appBar: AppBar(
//         toolbarHeight: 80,
//         leading: IconButton(
//           padding: EdgeInsets.fromLTRB(screenWidth * 0.05, 10, 0, 0),
//           icon: const Icon(
//             Icons.arrow_back,
//             color: Colors.white,
//           ),
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           color: Colors.white,
//           iconSize: screenWidth * 0.11,
//         ),
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Padding(
//               padding: EdgeInsets.fromLTRB(screenWidth * 0.1, 10, 0, 10),
//               child: Text(
//                 'App Setting',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: screenWidth * 0.13,
//                   fontFamily: 'Poppins',
//                   fontWeight: FontWeight.w600,
//                   height: 0,
//                 ),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.fromLTRB(
//                 screenWidth * 0.025,
//                 screenWidth * 0.05,
//                 screenWidth * 0.025,
//                 screenWidth * 0.03,
//               ),
//               child: GestureDetector(
//                 onTap: () {
//                   setState(() {
//                     _notificationsEnabled = !_notificationsEnabled;
//                     _saveNotificationStatus(_notificationsEnabled);
//                   });
//                 },
//                 child: Container(
//                   width: double.infinity,
//                   height: screenWidth * 0.2,
//                   decoration: ShapeDecoration(
//                     gradient: LinearGradient(
//                       begin: Alignment(-0.00, -1.00),
//                       end: Alignment(0, 1),
//                       colors: [Color(0xFF3E0858), Color(0xFF38022C)],
//                     ),
//                     shape: RoundedRectangleBorder(
//                       side: BorderSide(
//                           width: screenWidth * 0.005, color: Colors.white),
//                       borderRadius: BorderRadius.circular(screenWidth * 0.06),
//                     ),
//                   ),
//                   child: Row(
//                     children: [
//                       Padding(
//                         padding: EdgeInsets.only(left: 20),
//                         child: Text(
//                           "Notifications",
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: screenWidth * 0.08,
//                             fontFamily: 'Poppins',
//                             fontWeight: FontWeight.w600,
//                             height: 0,
//                           ),
//                         ),
//                       ),
//                       Spacer(),
//                       Padding(
//                         padding: EdgeInsets.only(right: 10),
//                         child: IconButton(
//                           onPressed: () {
//                             setState(() {
//                               _notificationsEnabled = !_notificationsEnabled;
//                               _saveNotificationStatus(_notificationsEnabled);
//                             });
//                           },
//                           icon: Icon(
//                             color: Colors.white,
//                             size: screenWidth * 0.09,
//                             _notificationsEnabled
//                                 ? Icons.check_box_outlined
//                                 : Icons.check_box_outline_blank,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:murious_appp/screen/profile/profile.dart';

class AppSetting extends StatefulWidget {
  const AppSetting({Key? key});

  @override
  State<AppSetting> createState() => _AppSettingState();
}

class _AppSettingState extends State<AppSetting> {
  bool _notificationsEnabled = true; // Track notification status

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        toolbarHeight: 80,
        leading: IconButton(
          padding: EdgeInsets.fromLTRB(screenWidth * 0.05, 10, 0, 0),
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(
                builder: (context) => const ProfilePage(),
              ),
            );
          },
          color: Colors.white,
          iconSize: screenWidth * 0.11,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(screenWidth * 0.1, 10, 0, 10),
              child: Text(
                'App Setting',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: screenWidth * 0.13,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(
                screenWidth * 0.02,
                screenWidth * 0.05,
                screenWidth * 0.02,
                screenWidth * 0.03,
              ),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _notificationsEnabled = !_notificationsEnabled;
                  });
                },
                child: Container(
                  width: double.infinity,
                  height: screenWidth * 0.2,
                  decoration: ShapeDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(-0.00, -1.00),
                      end: Alignment(0, 1),
                      colors: [Color(0xFF3E0858), Color(0xFF38022C)],
                    ),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                          width: screenWidth * 0.005, color: Colors.white),
                      borderRadius: BorderRadius.circular(screenWidth * 0.06),
                    ),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          "Notifications",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: screenWidth * 0.08,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _notificationsEnabled = !_notificationsEnabled;
                          });
                        },
                        child: Padding(
                          padding: EdgeInsets.only(right: 15),
                          child: Icon(
                            color: Colors.white,
                            size: screenWidth * 0.09,
                            _notificationsEnabled
                                ? Icons.check_box_outlined
                                : Icons.check_box_outline_blank,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
