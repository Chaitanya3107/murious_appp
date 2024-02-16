import 'package:flutter/material.dart';
import 'package:murious_appp/screen/home/home_bg.dart';
import 'package:murious_appp/screen/profile/profile.dart';

class ProfileUi extends StatelessWidget {
  const ProfileUi({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          FigmaToCodeApp(), // Background
          ProfilePage(),
        ],
      ),
    );
  }
}
