import 'package:flutter/material.dart';
import 'package:murious_appp/screen/home/home_bg.dart';
import 'package:murious_appp/screen/my_events/my_event_page.dart';

class MyEventUi extends StatelessWidget {
  const MyEventUi({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          FigmaToCodeApp(), // Background
          MyEvent(),
        ],
      ),

      // bottomNavigationBar: Navigation(user: user),
    );
  }
}
