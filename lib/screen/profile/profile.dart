// import 'package:flutter/material.dart';

// class ProfilePage extends StatefulWidget {
//   const ProfilePage({super.key});

//   @override
//   State<ProfilePage> createState() => _ProfilePageState();
// }

// class _ProfilePageState extends State<ProfilePage> {
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }

// import 'package:appp/home_bg.dart';
// import 'package:flutter/material.dart';

// class ProfilePage extends StatefulWidget {
//   const ProfilePage({Key? key}) : super(key: key);

//   @override
//   State<ProfilePage> createState() => _ProfilePageState();
// }

// class _ProfilePageState extends State<ProfilePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.transparent,
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Container(
//               alignment: Alignment.center,
//               color: Colors.transparent,
//               width: double.infinity,
//               height: 800,
//               child: Stack(
//                 children: [
//                   Positioned(
//                     left: 22,
//                     top: 291,
//                     child: Container(
//                       width: 317,
//                       height: 399,
//                       decoration: ShapeDecoration(
//                         color: Colors.black.withOpacity(0.20000000298023224),
//                         shape: RoundedRectangleBorder(
//                           side: const BorderSide(
//                               width: 2.90, color: Colors.white),
//                           borderRadius: BorderRadius.circular(22),
//                         ),
//                       ),
//                     ),
//                   ),
//                   const Positioned(
//                     left: 149,
//                     top: 227,
//                     child: Text(
//                       'Name',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 23.61,
//                         fontFamily: 'Poppins',
//                         fontWeight: FontWeight.w400,
//                         height: 0,
//                       ),
//                     ),
//                   ),
//                   const Positioned(
//                     left: 56,
//                     top: 318,
//                     child: Text(
//                       'My Profile',
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 19,
//                         fontFamily: 'Poppins',
//                         fontWeight: FontWeight.w400,
//                         height: 0,
//                       ),
//                     ),
//                   ),
//                   const Positioned(
//                     left: 56,
//                     top: 377,
//                     child: Text(
//                       'App Settings',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 19,
//                         fontFamily: 'Poppins',
//                         fontWeight: FontWeight.w400,
//                         height: 0,
//                       ),
//                     ),
//                   ),
//                   const Positioned(
//                     left: 56,
//                     top: 497,
//                     child: Text(
//                       'Feedback',
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 19,
//                         fontFamily: 'Poppins',
//                         fontWeight: FontWeight.w400,
//                         height: 0,
//                       ),
//                     ),
//                   ),
//                   const Positioned(
//                     left: 56,
//                     top: 557,
//                     child: Text(
//                       'Contact us',
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 19,
//                         fontFamily: 'Poppins',
//                         fontWeight: FontWeight.w400,
//                         height: 0,
//                       ),
//                     ),
//                   ),
//                   const Positioned(
//                     left: 87,
//                     top: 635,
//                     child: Text(
//                       'Log out',
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 19,
//                         fontFamily: 'Poppins',
//                         fontWeight: FontWeight.w500,
//                         height: 0,
//                       ),
//                     ),
//                   ),
//                   Positioned(
//                     left: 58,
//                     top: 362,
//                     child: Container(
//                       width: 244.57,
//                       decoration: const ShapeDecoration(
//                         shape: RoundedRectangleBorder(
//                           side: BorderSide(
//                             width: 1,
//                             strokeAlign: BorderSide.strokeAlignCenter,
//                             color: Colors.white,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   Positioned(
//                     left: 58,
//                     top: 422,
//                     child: Container(
//                       width: 244.57,
//                       decoration: const ShapeDecoration(
//                         shape: RoundedRectangleBorder(
//                           side: BorderSide(
//                             width: 1,
//                             strokeAlign: BorderSide.strokeAlignCenter,
//                             color: Colors.white,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   Positioned(
//                     left: 58,
//                     top: 480,
//                     child: Container(
//                       width: 244.57,
//                       decoration: const ShapeDecoration(
//                         shape: RoundedRectangleBorder(
//                           side: BorderSide(
//                             width: 1,
//                             strokeAlign: BorderSide.strokeAlignCenter,
//                             color: Colors.white,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   Positioned(
//                     left: 58,
//                     top: 545,
//                     child: Container(
//                       width: 244.57,
//                       decoration: const ShapeDecoration(
//                         shape: RoundedRectangleBorder(
//                           side: BorderSide(
//                             width: 1,
//                             strokeAlign: BorderSide.strokeAlignCenter,
//                             color: Colors.white,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   Positioned(
//                     left: 56,
//                     top: 605,
//                     child: Container(
//                       width: 244.57,
//                       decoration: const ShapeDecoration(
//                         shape: RoundedRectangleBorder(
//                           side: BorderSide(
//                             width: 1,
//                             strokeAlign: BorderSide.strokeAlignCenter,
//                             color: Colors.white,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class ProfilePage extends StatefulWidget {
//   const ProfilePage({super.key});

//   @override
//   State<ProfilePage> createState() => _ProfilePageState();
// }

// class _ProfilePageState extends State<ProfilePage> {
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }

import 'package:flutter/material.dart';
import 'package:murious_appp/screen/profile/profile_content.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Text(
                    'Name',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    width: double.infinity,
                    height: 460,
                    decoration: ShapeDecoration(
                      color: Colors.black.withOpacity(0.20000000298023224),
                      shape: RoundedRectangleBorder(
                        side:
                            const BorderSide(width: 2.90, color: Colors.white),
                        borderRadius: BorderRadius.circular(22),
                      ),
                    ),
                    child: const ProfiileContainer(),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
