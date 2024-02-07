import 'package:flutter/material.dart';
import 'package:murious_appp/screen/feedback/feedback_screen.dart';
import 'package:murious_appp/screen/home/home_bg.dart';

class FeedbackUi extends StatelessWidget {
  const FeedbackUi({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          FigmaToCodeApp(), // Background
          FeedbackScreen()
        ],
      ),

      // bottomNavigationBar: Navigation(user: user),
    );
    ;
  }
}
