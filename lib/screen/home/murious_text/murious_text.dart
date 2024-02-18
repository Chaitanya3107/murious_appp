import 'package:flutter/material.dart';

class MuriousText extends StatelessWidget {
  const MuriousText({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.fromLTRB(
        screenWidth * 0.05, // left
        screenWidth * 0.06, // top
        screenWidth * 0.05, // right
        screenWidth * 0.00, // bottom
      ),
      child: Text(
        "Murious is good",
        style: TextStyle(
          color: Colors.white,
          fontSize: screenWidth * 0.12,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
