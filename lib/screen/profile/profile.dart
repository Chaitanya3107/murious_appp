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
                          fontFamily: 'Murious',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(screenWidth * 0.05),
                      child: Container(
                        width: double.infinity,
                        height: screenHeight * 0.65, // Adjusted height
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment(-0.00, -1.00),
                            end: Alignment(0, 1),
                            colors: [Color(0xFF3E0858), Color(0xFF38022C)],
                          ),
                          borderRadius:
                              BorderRadius.circular(screenWidth * 0.06),
                          border: Border.all(
                            width: screenWidth * 0.005,
                            // color: Colors.white
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 223, 213, 213),
                              offset: const Offset(
                                2,
                                2,
                              ),
                              blurRadius: 0,
                              spreadRadius: 0,
                            ), //BoxShadow
                            BoxShadow(
                              color: const Color.fromARGB(255, 223, 213, 213),
                              offset: const Offset(2.0, -0.1),
                              blurRadius: 0.0,
                              spreadRadius: 0.0,
                            ), //BoxShadow
                          ],
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
