import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:murious_appp/screen/authenticate/sign_in.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          SignIN(),
        ],
      ),
    );
  }
}

class TriangleClipper extends CustomClipper<Path> {
  final double angle; // New variable for the angle

  TriangleClipper({this.angle = 0.0}); // Default angle is set to 45 degrees

  @override
  Path getClip(Size size) {
    final path = Path()
      ..moveTo(size.width / 2, 0)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height)
      ..close();

    final radians = angle * (math.pi / 180); // Convert degrees to radians
    final pathTransform = Matrix4.identity()
      ..rotateZ(-radians); // Negative sign to rotate in the opposite direction

    return path.transform(pathTransform.storage);
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
