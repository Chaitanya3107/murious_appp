// import 'package:flutter/material.dart';

// class TopText extends StatelessWidget {
//   const TopText({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         const Text(
//           'Welcome',
//           style: TextStyle(
//             fontSize: 55,
//             fontWeight: FontWeight.w600,
//             color: Colors.white,
//           ),
//         ),
//         Padding(
//           padding:
//               const EdgeInsets.only(left: 20), // Add some space to the right
//           child: SizedBox(
//             width: 100, // Set the width of the image container
//             height: 100, // Set the height of the image container
//             child: Align(
//               alignment: Alignment.centerRight, // Shift the image to the right
//               child: Image.asset(
//                 'assets/images/murious logo.png',
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class TopText extends StatelessWidget {
//   const TopText({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       // padding: EdgeInsets.only(left: 65),
//       padding: EdgeInsets.fromLTRB(90, 10, 10, 10),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           // const Text(
//           //   'Welcome',
//           //   style: TextStyle(
//           //     fontSize: 55,
//           //     fontWeight: FontWeight.w600,
//           //     color: Colors.white,
//           //   ),
//           // ),
//           Padding(
//             padding:
//                 const EdgeInsets.only(left: 20), // Add some space to the right
//             child: SizedBox(
//               width: 150, // Set the width of the image container
//               height: 150, // Set the height of the image container
//               child: Align(
//                 alignment:
//                     Alignment.centerRight, // Shift the image to the right
//                 child: Image.asset(
//                   'assets/images/murious logo.png',
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class TopText extends StatelessWidget {
  const TopText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(120),
      alignment: Alignment.topCenter,
      child: Column(
        children: [
          SizedBox(
            width: 150, // Set the width of the image container
            height: 150, // Set the height of the image container
            child: Align(
              alignment: Alignment.centerRight, // Shift the image to the right
              child: Image.asset(
                'assets/images/murious logo.png',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
