import 'package:flutter/material.dart';
import 'package:murious_appp/screen/profile/profile.dart';

// Contact Page Widget
class ContactPage extends StatelessWidget {
  const ContactPage({Key? key});

  @override
  Widget build(BuildContext context) {
    // Get the screen width
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.transparent,
      // App Bar
      appBar: AppBar(
        toolbarHeight: 80,
        leading: IconButton(
          padding: EdgeInsets.fromLTRB(screenWidth * 0.05, 10, 0, 0),
          icon: const Icon(
            Icons.arrow_back, // Back arrow icon
            color: Colors.white, // Icon color
          ),
          onPressed: () {
            // Navigate back to the ProfilePage
            Navigator.pop(
              context,
              MaterialPageRoute(
                builder: (context) => const ProfilePage(),
              ),
            );
          },
          color: Colors.white, // Icon color
          iconSize: screenWidth * 0.11, // Icon size
        ),
        backgroundColor: Colors.transparent, // Transparent app bar background
        elevation: 0, // No elevation
      ),
      body: SingleChildScrollView(
        // Scrollable content
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Contact Us Title
            Padding(
              padding: EdgeInsets.fromLTRB(screenWidth * 0.1, 10, 0, 10),
              child: Text(
                'Contact Us', // Title text
                style: TextStyle(
                  color: Colors.white, // Text color
                  fontSize: screenWidth * 0.13, // Font size
                  fontFamily: 'Murious', // Font family
                  fontWeight: FontWeight.w600, // Font weight
                  height: 0,
                ),
              ),
            ),
            // Contact rows
            contactRow(
                Icons.call, '6942069420', screenWidth), // Phone number row
            contactRow(
                Icons.mail, 'abc@juitsolan.in', screenWidth), // Email row
            contactRow(
              // Address row
              Icons.location_on,
              'Jaypee University of \nInformation Technology,\nWaknaghat, Solan, H.P. , \n173221',
              screenWidth,
            ),
          ],
        ),
      ),
    );
  }

  // Function to build a contact row with an icon and text
  Widget contactRow(IconData icon, String text, double screenWidth) {
    return Row(
      children: [
        IconButton(
          padding: EdgeInsets.fromLTRB(screenWidth * 0.1, 30, 10, 10),
          icon: Icon(
            icon, // Icon
            color: Colors.white, // Icon color
          ),
          color: Colors.white, // Icon color
          iconSize: screenWidth * 0.075, // Icon size
          onPressed: null, // No onPressed action
        ),
        // Text widget for contact information
        Padding(
          padding: EdgeInsets.fromLTRB(screenWidth * 0.065, 30, 10, 10),
          child: SizedBox(
            width: screenWidth * 0.6,
            child: Text(
              text, // Contact text
              style: TextStyle(
                color: Colors.white, // Text color
                fontSize: screenWidth * 0.048, // Font size
                fontFamily: 'Murious', // Font family
                fontWeight: FontWeight.w500, // Font weight
                height: 0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
