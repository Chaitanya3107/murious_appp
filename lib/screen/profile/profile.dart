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
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(screenWidth * 0.05,
                      screenWidth * 0.34, screenWidth * 0.05, 0),
                  child: Container(
                    width: double.infinity,
                    height: screenHeight * 0.65,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(-0.00, -1.00),
                        end: Alignment(0, 1),
                        colors: [Color(0xFF3E0858), Color(0xFF38022C)],
                      ),
                      borderRadius: BorderRadius.circular(screenWidth * 0.06),
                      border: Border.all(
                        width: screenWidth * 0.005,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 223, 213, 213),
                          offset: const Offset(2, 2),
                          blurRadius: 0,
                          spreadRadius: 0,
                        ),
                        BoxShadow(
                          color: const Color.fromARGB(255, 223, 213, 213),
                          offset: const Offset(2.0, -0.1),
                          blurRadius: 0.0,
                          spreadRadius: 0.0,
                        ),
                      ],
                    ),
                    child: const ProfiileContainer(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
