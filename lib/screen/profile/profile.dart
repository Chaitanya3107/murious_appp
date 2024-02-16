import 'package:flutter/material.dart';
import 'package:murious_appp/screen/profile/profile_content.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: ListView(
        // Wrap the content with ListView
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Padding(
                      // padding: EdgeInsets.only(bottom: screenWidth * 0.05),
                      // padding: EdgeInsets.symmetric(
                      //     horizontal: screenWidth * 0.01,
                      //     vertical: screenWidth * 0.14),
                      padding: EdgeInsets.fromLTRB(
                          screenWidth * 0.01,
                          screenWidth * 0.15,
                          screenWidth * 0.01,
                          screenWidth * 0.08),
                      child: Text(
                        'Name',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: screenWidth * 0.08,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(screenWidth * 0.03),
                      child: Container(
                        width: double.infinity,
                        height: screenHeight * 0.65, // Adjusted height
                        decoration: ShapeDecoration(
                          color: Colors.black.withOpacity(0.2),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                                width: screenWidth * 0.005,
                                color: Colors.white),
                            borderRadius:
                                BorderRadius.circular(screenWidth * 0.1),
                          ),
                        ),
                        child: const ProfiileContainer(),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
