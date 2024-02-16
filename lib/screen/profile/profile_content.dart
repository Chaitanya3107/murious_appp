import 'package:flutter/material.dart';
import 'package:murious_appp/screen/contact/contact.dart';
import 'package:murious_appp/screen/feedback/feedback.dart';
import 'package:murious_appp/screen/notification/notification_ui.dart';
import 'package:murious_appp/services/auth.dart';

class ProfiileContainer extends StatefulWidget {
  const ProfiileContainer({Key? key});

  @override
  State<ProfiileContainer> createState() => _ProfiileContainerState();
}

final AuthService _auth = AuthService();

class _ProfiileContainerState extends State<ProfiileContainer> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: screenWidth * 0.05, vertical: screenWidth * 0.03),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Settings section
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(screenWidth * 0.08,
                          screenWidth * 0.08, 0, screenWidth * 0.1),
                      child: Text(
                        'Settings',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: screenWidth * 0.062,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ),
                    IconButton(
                      padding: EdgeInsets.fromLTRB(screenWidth * 0.26, 0, 0, 0),
                      icon: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const NotificationUi(),
                          ),
                        );
                      },
                      color: Colors.white,
                      iconSize: screenWidth * 0.09,
                    ),
                  ],
                ),
                // Divider
                Container(
                  width: screenWidth * 0.625,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: screenWidth * 0.0025,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                // Feedback section
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(screenWidth * 0.08,
                          screenWidth * 0.08, 0, screenWidth * 0.1),
                      child: Text(
                        'Feedback',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: screenWidth * 0.062,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ),
                    IconButton(
                      padding: EdgeInsets.fromLTRB(screenWidth * 0.23, 0, 0, 0),
                      icon: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const FeedbackUi(),
                          ),
                        );
                      },
                      color: Colors.white,
                      iconSize: screenWidth * 0.09,
                    ),
                  ],
                ),
                // Divider
                Container(
                  width: screenWidth * 0.625,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: screenWidth * 0.0025,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                // Contact Us section
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(screenWidth * 0.08,
                          screenWidth * 0.08, 0, screenWidth * 0.1),
                      child: Text(
                        'Contact Us',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: screenWidth * 0.062,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ),
                    IconButton(
                      padding: EdgeInsets.fromLTRB(screenWidth * 0.22, 0, 0, 0),
                      icon: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ContactUs(),
                          ),
                        );
                      },
                      color: Colors.white,
                      iconSize: screenWidth * 0.09,
                    ),
                  ],
                ),
                // Divider
                Container(
                  width: screenWidth * 0.625,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: screenWidth * 0.0025,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                // FAQs section
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(screenWidth * 0.08,
                          screenWidth * 0.08, 0, screenWidth * 0.1),
                      child: Text(
                        'FAQs',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: screenWidth * 0.062,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ),
                    IconButton(
                      padding: EdgeInsets.fromLTRB(screenWidth * 0.35, 0, 0, 0),
                      icon: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ContactUs(),
                          ),
                        );
                      },
                      color: Colors.white,
                      iconSize: screenWidth * 0.09,
                    ),
                  ],
                ),
                // Divider
                Container(
                  width: screenWidth * 0.625,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: screenWidth * 0.0025,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                // Logout section
                Row(
                  children: [
                    IconButton(
                      padding: EdgeInsets.fromLTRB(screenWidth * 0.2, 0, 0, 0),
                      icon: Icon(
                        Icons.logout,
                        color: Colors.white,
                      ),
                      onPressed: () async {
                        await _auth.signOutGoogle();
                      },
                      color: Colors.white,
                      iconSize: screenWidth * 0.09,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: screenWidth * 0.08,
                          vertical: screenWidth * 0.065),
                      child: ElevatedButton(
                        onPressed: () async {
                          await _auth.signOutGoogle();
                        },
                        child: const Text(
                          "Logout",
                          style: TextStyle(
                            backgroundColor: Colors.transparent,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
