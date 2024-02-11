import 'package:flutter/material.dart';
import 'package:murious_appp/screen/profile/profile.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        toolbarHeight: 80,
        leading: IconButton(
          padding: EdgeInsets.fromLTRB(screenWidth * 0.05, 10, 0, 0),
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(
                builder: (context) => const ProfilePage(),
              ),
            );
          },
          color: Colors.white,
          iconSize: screenWidth * 0.11,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(screenWidth * 0.1, 10, 0, 10),
              child: Text(
                'Contact Us',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: screenWidth * 0.13,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
            ),
            contactRow(Icons.call, '6942069420', screenWidth),
            contactRow(Icons.mail, 'abc@juitsolan.in', screenWidth),
            contactRow(
                Icons.location_on,
                'Jaypee University of \nInformation Technology,\nWaknaghat, Solan, H.P. , \n173221',
                screenWidth),
          ],
        ),
      ),
    );
  }

  Widget contactRow(IconData icon, String text, double screenWidth) {
    return Row(
      children: [
        IconButton(
          padding: EdgeInsets.fromLTRB(screenWidth * 0.1, 30, 10, 10),
          icon: Icon(
            icon,
            color: Colors.white,
          ),
          color: Colors.white,
          iconSize: screenWidth * 0.075,
          onPressed: null,
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(screenWidth * 0.065, 30, 10, 10),
          child: SizedBox(
            width: screenWidth * 0.6,
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontSize: screenWidth * 0.048,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
