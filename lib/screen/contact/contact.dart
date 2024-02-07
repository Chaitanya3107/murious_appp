import 'package:flutter/material.dart';
import 'package:murious_appp/screen/contact/contact_page.dart';
import 'package:murious_appp/screen/home/home_bg.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    // double screenHeight = MediaQuery.of(context).size.height;

    return const Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          FigmaToCodeApp(), // Background
          ContactPage()
        ],
      ),

      // bottomNavigationBar: Navigation(user: user),
    );
  }
}
