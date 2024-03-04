import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:murious_appp/models/user.dart';
import 'package:murious_appp/screen/home/carousel/Carousel.dart';
import 'package:murious_appp/screen/home/major_events/major_events_details.dart';
import 'package:murious_appp/screen/home/murious_text/murious_text.dart';
import 'package:murious_appp/services/databse1.dart';

class Home extends StatelessWidget {
  // Constructor to accept user data
  Home({
    Key? key,
    required this.user,
  }) : super(key: key);

  // User object passed to the home screen
  final UserObj user;

  @override
  Widget build(BuildContext context) {
    // Get screen width
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        // Set the height of the app bar
        toolbarHeight: screenWidth * 0.2,
        actions: [
          // Murious logo
          Padding(
            padding: EdgeInsets.fromLTRB(
              0,
              screenWidth * 0.025,
              screenWidth * 0.085,
              0,
            ),
            child: Image.asset(
              'assets/images/murious logo.png',
              width: screenWidth * 0.12,
              height: screenWidth * 0.12,
            ),
          ),
        ],
        // Title section of the app bar
        title: StreamBuilder<DocumentSnapshot>(
          // Stream to listen for changes in user data
          stream: DatabaseServiceOne(uid: user.uid).userdata,
          builder: (context, snapshot) {
            // Loading state
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Text(
                'Welcome',
                style: TextStyle(
                  fontSize: screenWidth * 0.11,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Murious',
                  color: Colors.white,
                ),
              );
            }
            // Error state
            if (snapshot.hasError) {
              return Text(
                'Welcome',
                style: TextStyle(
                  fontSize: screenWidth * 0.11,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Murious',
                  color: Colors.white,
                ),
              );
            }
            // Extract username from snapshot
            final username = snapshot.data?.get('Username') ?? '';
            // Display a welcome message with the username
            return Text(
              'Hi, $username',
              style: TextStyle(
                fontSize: screenWidth * 0.11,
                fontWeight: FontWeight.bold,
                fontFamily: 'Murious',
                color: Colors.white,
              ),
            );
          },
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      // Body content
      body: Stack(
        children: [
          // Murious text
          MuriousText(),
          // Carousel widget
          ComplicatedImageDemo(),
          // Major events details
          MajorHomeDetails(),
        ],
      ),
    );
  }
}
