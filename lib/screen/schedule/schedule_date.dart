import 'package:flutter/material.dart';

class DateSection extends StatelessWidget {
  final int startingDay; // Starting day for the date
  final String month;

  const DateSection({
    Key? key,
    required this.startingDay,
    required this.month,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(
                screenWidth * 0.06,
                screenWidth * 0.012,
                screenWidth * 0.022,
                screenWidth * 0.002,
              ), // Adjust padding based on screen width
              child: Text(
                (startingDay + 1).toString(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: screenWidth *
                      0.15, // Adjust font size based on screen width
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Murious',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(
                screenWidth * 0.06,
                0,
                screenWidth * 0.022,
                screenWidth * 0.008,
              ), // Adjust padding based on screen width
              child: Text(
                month,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: screenWidth *
                        0.068, // Adjust font size based on screen width
                    fontFamily: 'Murious',
                    fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
        Spacer(),
      ],
    );
  }
}


// import 'package:flutter/material.dart';

// class DateSection extends StatelessWidget {
//   final int startingDay; // Starting day for the date
//   final String month;

//   const DateSection({
//     Key? key,
//     required this.startingDay,
//     required this.month,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Padding(
//               padding: const EdgeInsets.fromLTRB(20, 10, 10, 0),
//               child: Text(
//                 (startingDay + 1).toString(),
//                 style: const TextStyle(
//                   color: Colors.white,
//                   fontSize: 60,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.fromLTRB(20, 0, 10, 10),
//               child: Text(
//                 month,
//                 style: const TextStyle(
//                   color: Colors.white,
//                   fontSize: 30,
//                 ),
//               ),
//             ),
//           ],
//         ),
//         const Spacer(),
//       ],
//     );
//   }
// }
