import 'dart:async';

import 'package:flutter/material.dart';
import 'package:murious_appp/screen/wraper.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(milliseconds: 2600), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Wrapper()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromARGB(0, 49, 49, 50),
            Color.fromARGB(255, 63, 5, 96),
          ],
        ),
      ),
      width: double.infinity,
      height: double.infinity,
      // child: Lottie.asset('assets/images/Flow 20.json'),
      child: Lottie.asset('assets/images/Flow 32.json'),
      // child: Stack(
      //   children: [
      //     Center(child: Lottie.asset('assets/images/Flow 20.json')),
      //   ],
      // ),
    );
  }
}

// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:murious_appp/screen/wraper.dart';
// import 'package:lottie/lottie.dart';

// class SplashScreen extends StatefulWidget {
//   const SplashScreen({Key? key});

//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     super.initState();
//     Timer(Duration(seconds: 2), () {
//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(builder: (context) => Wrapper()),
//       );
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         width: MediaQuery.of(context).size.width,
//         height: MediaQuery.of(context).size.height,
//         child: Lottie.asset(
//           'assets/images/Flow 1.json',
//         ),
//       ),
//     );
//   }
// }






// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:murious_appp/screen/wraper.dart';
// import 'package:lottie/lottie.dart';

// class SplashScreen extends StatefulWidget {
//   const SplashScreen({Key? key});

//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     super.initState();
//     Timer(Duration(milliseconds: 2600), () {
//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(builder: (context) => Wrapper()),
//       );
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//             colors: [
//               Color.fromARGB(255, 49, 49, 50),
//               Color.fromARGB(255, 63, 5, 96),
//             ], // Your gradient colors
//           ),
//         ),
//         child: Center(
//           child: Lottie.asset('assets/images/Flow 1.json'),
//         ),
//       ),
//     );
//   }
// }




// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:murious_appp/screen/wraper.dart';
// import 'package:lottie/lottie.dart';

// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});

//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     Timer(Duration(milliseconds: 2600), () {
//       Navigator.pushReplacement(
//           context, MaterialPageRoute(builder: (context) => Wrapper()));
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         width: double.infinity,
  //       height: double.infinity,
  //       decoration: const BoxDecoration(
  //         gradient: LinearGradient(
  //           begin: Alignment.topCenter,
  //           end: Alignment.bottomCenter,
  //           colors: [
  //             Color.fromARGB(255, 49, 49, 50),
  //             Color.fromARGB(255, 63, 5, 96),
  //           ],
  //         ),
  //       ),
  //       child: Center(
  //         child: Lottie.asset('assets/images/Flow 6.json'),
  //       ),
  //     ),
  //   );
  // }
// }




















// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:murious_appp/screen/wraper.dart';
// import 'package:lottie/lottie.dart';
// import 'package:flutter_native_splash/flutter_native_splash.dart';

// class SplashScreen extends StatefulWidget {
//   const SplashScreen({Key? key});

//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     super.initState();
//     Timer(Duration(seconds: 3), () {
//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(builder: (context) => Wrapper()),
//       );
//     });
//   }

//   @override
//   // Widget build(BuildContext context) {
//   //   return Scaffold(
//   //     body: Container(
//   //       width: double.infinity,
//   //       height: MediaQuery.of(context).size.height,
//   //       child: Lottie.asset(
//   //         'assets/images/ezgif-1-9ebb3478f9.mp4.lottie.json',
//   //       ),
//   //     ),
//   //   );
//   // }

//     Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         width: double.infinity,
//         height: MediaQuery.of(context).size.height,
//         // child: FlutterNativeSplash()
//       ),
//     );
//   }
// }

// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:murious_appp/screen/wraper.dart';

// class SplashScreen extends StatefulWidget {
//   const SplashScreen({Key? key});

//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     super.initState();
//     Timer(Duration(seconds: 3), () {
//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(builder: (context) => Wrapper()),
//       );
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(children: [
//         Container(
//           decoration: const BoxDecoration(
//             gradient: LinearGradient(
//               begin: Alignment.topCenter,
//               end: Alignment.bottomCenter,
//               colors: [
//                 Color.fromARGB(0, 49, 49, 50),
//                 Color.fromARGB(255, 63, 5, 96),
//               ],
//             ),
//           ),
//           color: Colors.white, // Set the background color as needed
//           child: Center(
//             child: Image.asset(
//               'assets/images/Flow 1.gif', // Replace with your GIF file path
//               fit: BoxFit.cover, // Adjust the fit as needed
//             ),
//           ),
//         ),
//       ]),
//     );
//   }
// }
