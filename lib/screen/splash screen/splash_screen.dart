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
    Timer(Duration(milliseconds: 2500), () {
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
    );
  }
}
