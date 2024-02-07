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
//     return Column(
//       children: [
//         Padding(
//           padding: const EdgeInsets.fromLTRB(10, 10, 10, 4),
//           child: Text(
//             (startingDay + 1)
//                 .toString(), // Add 2 to starting day for illustration
//             style: const TextStyle(
//               color: Colors.white,
//               fontSize: 30,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.fromLTRB(10, 2, 10, 10),
//           child: Text(
//             month,
//             style: const TextStyle(
//               color: Colors.white,
//               fontSize: 20,
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

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
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 10, 0),
              child: Text(
                (startingDay + 1).toString(),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 10, 10),
              child: Text(
                month,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
          ],
        ),
        const Spacer(),
      ],
    );
  }
}
