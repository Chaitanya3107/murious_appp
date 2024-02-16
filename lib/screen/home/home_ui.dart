import 'package:flutter/material.dart';
import 'package:murious_appp/models/user.dart';
import 'package:murious_appp/screen/home/home.dart';
import 'package:murious_appp/screen/home/home_bg.dart';

class HomeUi extends StatelessWidget {
  const HomeUi({
    Key? key,
    required this.user,
  }) : super(key: key);

  final UserObj user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          const FigmaToCodeApp(), // Background
          Home(user: user) // Content on top of the background
        ],
      ),
    );
  }
}
