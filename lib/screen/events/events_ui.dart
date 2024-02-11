import 'package:flutter/material.dart';
import 'package:murious_appp/models/user.dart';
import 'package:murious_appp/screen/events/events_page.dart';
import 'package:murious_appp/screen/home/home_bg.dart';

class EventsUi extends StatelessWidget {
  const EventsUi({
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
          EventsPage(user: user), // Content on top of the background
        ],
      ),

      // bottomNavigationBar: Navigation(user: user),
    );
  }
}
