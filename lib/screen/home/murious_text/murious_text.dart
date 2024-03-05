import 'package:flutter/material.dart';

class MuriousText extends StatelessWidget {
  const MuriousText({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(
            0,
            0, // Adjust padding as needed
            0,
            screenWidth * 1.69, // Adjust padding as needed
          ),
          child: Center(
            child: Text(
              "3-Days Panorama",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: screenWidth * 0.095,
                fontFamily: 'Murious',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        // Image positioned at the top of the screen with full width
        //   child:
        Padding(
          padding: EdgeInsets.fromLTRB(
            screenWidth * 0.0,
            0, // Adjust padding as needed
            screenWidth * 0.0,
            screenWidth * 1.39, // Adjust padding as needed
          ),
          child: Center(
            child: Image.asset(
              'assets/images/MURIOUS2.png',
              width: double.infinity,
            ),
          ),
        ),

        // ),
      ],
    );
  }
}

// Column(
//   mainAxisAlignment: MainAxisAlignment.start,
//   crossAxisAlignment: CrossAxisAlignment.center,
//   children: [
//     Center(
//       child: Image.asset(
//         'assets/images/MURIOUS2.png',
//         width: screenWidth * 0.12,
//         height: screenWidth * 0.12,
//       ),
//     ),
//     Center(
//       child: Text(
//         "3-Days Panorama",
//         style: TextStyle(
//           color: Colors.white,
//           fontSize: screenWidth * 0.075,
//           fontFamily: 'Murious',
//           fontWeight: FontWeight.w600,
//         ),
//       ),
//     ),
//   ],
// );
//   }
// }
