import 'package:flutter/material.dart';
import 'package:murious_appp/models/user.dart';
import 'package:murious_appp/screen/home/carousel/Carousel.dart';
import 'package:murious_appp/services/auth.dart';

class Home extends StatelessWidget {
  // Home constructor which accepts user id, i.e., uid
  Home({
    Key? key,
    required this.user,
  }) : super(key: key);

  final AuthService _auth = AuthService();

  // Passing uid from wrapper to home screen to display things
  final UserObj user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: ComplicatedImageDemo(),
    );
  }
}
