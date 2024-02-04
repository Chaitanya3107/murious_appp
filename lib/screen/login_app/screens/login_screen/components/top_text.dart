import 'package:flutter/material.dart';

class TopText extends StatelessWidget {
  const TopText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Welcome\nBack',
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(left: 60), // Add some space to the right
          child: SizedBox(
            width: 100, // Set the width of the image container
            height: 100, // Set the height of the image container
            child: Align(
              alignment: Alignment.centerRight, // Shift the image to the right
              child: Image.asset(
                'assets/images/murious logo.png',
              ),
            ),
          ),
        ),
      ],
    );
  }
}
