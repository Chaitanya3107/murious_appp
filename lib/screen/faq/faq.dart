import 'package:flutter/material.dart';
import 'package:murious_appp/screen/faq/faq_screen.dart';
import 'package:murious_appp/screen/home/home_bg.dart';

class FaqUi extends StatelessWidget {
  const FaqUi({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          FigmaToCodeApp(), // Background
          FAQPage(),
        ],
      ),
    );
    ;
  }
}
