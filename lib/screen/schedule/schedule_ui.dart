import 'package:flutter/material.dart';
import 'package:murious_appp/models/user.dart';
import 'package:murious_appp/screen/home/home_bg.dart';
import 'package:murious_appp/screen/schedule/schedule.dart';
import 'package:murious_appp/services/auth.dart';

class ScheduleUi extends StatelessWidget {
  ScheduleUi({
    Key? key,
    required this.user,
  }) : super(key: key);

  final AuthService _auth = AuthService();
  final UserObj user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          const FigmaToCodeApp(), // Background
          Schedule(user: user), // Content on top of the background
        ],
      ),

      // bottomNavigationBar: Navigation(user: user),
    );
  }
}
