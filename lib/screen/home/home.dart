import 'package:flutter/material.dart';
import 'package:murious_appp/models/user.dart';
import 'package:murious_appp/screen/home/carousel/Carousel.dart';
import 'package:murious_appp/screen/home/major_events/major_events_details.dart';
import 'package:murious_appp/screen/home/murious_text/murious_text.dart';
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
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        toolbarHeight:
            screenWidth * 0.2, // Adjust toolbar height based on screen width
        actions: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, screenWidth * 0.025,
                screenWidth * 0.085, 0), // Adjust padding based on screen width
            child: Image.asset(
              'assets/images/murious logo.png',
              width:
                  screenWidth * 0.12, // Adjust image size based on screen width
              height: screenWidth * 0.12,
            ),
          ),
        ],
        title: Padding(
          padding: EdgeInsets.fromLTRB(screenWidth * 0.02, screenWidth * 0.025,
              0, 0), // Adjust padding based on screen width
          child: Text(
            'Welcome',
            style: TextStyle(
              fontSize:
                  screenWidth * 0.12, // Adjust font size based on screen width
              fontWeight: FontWeight.bold,
              fontFamily: 'Murious',
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        children: [
          MuriousText(),
          ComplicatedImageDemo(),
          MajorHomeDetails(),
        ],
      ),
    );
  }
}
