// import 'package:flutter/material.dart';

// class EventGlass extends StatelessWidget {
//   final String eventName;
//   final String eventTime;
//   final String eventVenue;

//   const EventGlass({
//     Key? key,
//     required this.eventName,
//     required this.eventTime,
//     required this.eventVenue, // New parameter for venue
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     // Get the screen width
//     final screenWidth = MediaQuery.of(context).size.width;

//     return Center(
//       child: Padding(
//         // Apply padding to position the container
//         padding: EdgeInsets.fromLTRB(
//           screenWidth * 0.000, // Left padding
//           screenWidth * 0.6, // Top padding
//           screenWidth * 0.00, // Right padding
//           screenWidth * 0.00, // Bottom padding
//         ),
//         child: Container(
//           width: screenWidth * 0.7, // Adjust width based on screen size
//           height: screenWidth * 0.26, // Adjust height based on screen size
//           decoration: ShapeDecoration(
//             gradient: LinearGradient(
//               begin: Alignment(-0.00, -1.00),
//               end: Alignment(0, 1),
//               colors: [Color(0xFF3E0858), Color(0xFF38022C)],
//             ),
//             // color: Color.fromARGB(255, 74, 17, 104).withOpacity(0.4),
//             // color: Colors.black.withOpacity(0.02),
//             shape: RoundedRectangleBorder(
//               side: BorderSide(width: screenWidth * 0.005, color: Colors.white),
//               borderRadius: BorderRadius.circular(screenWidth * 0.06),
//             ),
//           ),
//           child: Padding(
//             padding: EdgeInsets.fromLTRB(
//               screenWidth * 0.05, // Left padding
//               screenWidth * 0.00, // Top padding
//               screenWidth * 0.00, // Right padding
//               screenWidth * 0.03,
//             ),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               // crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 // Row for event name and arrow icon
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   // crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     // Event name
//                     Text(
//                       eventName,
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: screenWidth * 0.07,
//                         fontFamily: 'Poppins',
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),

//                     // Arrow icon button
//                     IconButton(
//                       onPressed: () {
//                         // Add your onPressed functionality here
//                       },
//                       icon: Icon(
//                         Icons.arrow_forward,
//                         color: Colors.white,
//                         size: screenWidth * 0.1,
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: screenWidth * 0.002), // Spacer
//                 // Row for event time and venue
//                 Row(
//                   // mainAxisAlignment: MainAxisAlignment.center,
//                   // crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     // Event time
//                     Padding(
//                       padding: EdgeInsets.fromLTRB(
//                         screenWidth * 0.08, // Left padding
//                         screenWidth * 0.00, // Top padding
//                         screenWidth * 0.00, // Right padding
//                         screenWidth * 0.00,
//                       ),
//                       child: Text(
//                         eventTime,
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: screenWidth * 0.04,
//                           fontFamily: 'Poppins',
//                           fontWeight: FontWeight.w400,
//                         ),
//                       ),
//                     ),
//                     SizedBox(width: screenWidth * 0.04), // Spacer
//                     // Event venue
//                     Padding(
//                       padding: EdgeInsets.fromLTRB(
//                         screenWidth * 0.00, // Left padding
//                         screenWidth * 0.00, // Top padding
//                         screenWidth * 0.00, // Right padding
//                         screenWidth * 0.00,
//                       ),
//                       child: Text(
//                         eventVenue,
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: screenWidth * 0.04,
//                           fontFamily: 'Poppins',
//                           fontWeight: FontWeight.w400,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class EventGlass extends StatelessWidget {
//   final String eventName;
//   final String eventTime;
//   final String eventVenue;

//   const EventGlass({
//     Key? key,
//     required this.eventName,
//     required this.eventTime,
//     required this.eventVenue,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     // Get the screen width
//     final screenWidth = MediaQuery.of(context).size.width;

//     return Center(
//       child: Padding(
//         // Apply padding to position the container
//         padding: EdgeInsets.fromLTRB(
//           screenWidth * 0.000, // Left padding
//           screenWidth * 0.6, // Top padding
//           screenWidth * 0.00, // Right padding
//           screenWidth * 0.00, // Bottom padding
//         ),
//         child: Container(
//           width: screenWidth * 0.7, // Adjust width based on screen size
//           height: screenWidth * 0.25, // Adjust height based on screen size
//           decoration: ShapeDecoration(
//             gradient: LinearGradient(
//               begin: Alignment(-0.00, -1.00),
//               end: Alignment(0, 1),
//               colors: [Color(0xFF3E0858), Color(0xFF38022C)],
//             ),
//             shape: RoundedRectangleBorder(
//               side: BorderSide(width: screenWidth * 0.005, color: Colors.white),
//               borderRadius: BorderRadius.circular(screenWidth * 0.06),
//             ),
//           ),
//           child: Padding(
//             padding: EdgeInsets.fromLTRB(
//               screenWidth * 0.05, // Left padding
//               screenWidth * 0.00, // Top padding
//               screenWidth * 0.00, // Right padding
//               screenWidth * 0.03,
//             ),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text(
//                       eventName,
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: screenWidth * 0.07,
//                         fontFamily: 'Poppins',
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                     IconButton(
//                       onPressed: () {
//                         // Add your onPressed functionality here
//                       },
//                       icon: Icon(
//                         Icons.arrow_forward,
//                         color: Colors.white,
//                         size: screenWidth * 0.1,
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: screenWidth * 0.002), // Spacer
//                 Row(
//                   children: [
//                     Padding(
//                       padding: EdgeInsets.fromLTRB(
//                         screenWidth * 0.1, // Left padding
//                         screenWidth * 0.00, // Top padding
//                         screenWidth * 0.00, // Right padding
//                         screenWidth * 0.00,
//                       ),
//                       child: Text(
//                         eventTime,
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: screenWidth * 0.04,
//                           fontFamily: 'Poppins',
//                           fontWeight: FontWeight.w400,
//                         ),
//                       ),
//                     ),
//                     SizedBox(width: screenWidth * 0.04), // Spacer
//                     Padding(
//                       padding: EdgeInsets.fromLTRB(
//                         screenWidth * 0.00, // Left padding
//                         screenWidth * 0.00, // Top padding
//                         screenWidth * 0.00, // Right padding
//                         screenWidth * 0.00,
//                       ),
//                       child: Text(
//                         eventVenue,
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: screenWidth * 0.04,
//                           fontFamily: 'Poppins',
//                           fontWeight: FontWeight.w400,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:murious_appp/screen/events/event_container/event_desc/event_descUi.dart';

class EventGlass extends StatelessWidget {
  final String eventName;
  final String eventTime;
  final String eventVenue;
  final String eventDescription;

  const EventGlass({
    Key? key,
    required this.eventName,
    required this.eventTime,
    required this.eventVenue,
    required this.eventDescription,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Center(
      child: GestureDetector(
        onTap: () {
          // Navigate to EventDescUi with necessary details
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => EventDescUi(
                eventName: eventName,
                eventTime: eventTime,
                eventVenue: eventVenue,
                eventDescription: eventDescription,
              ),
            ),
          );
        },
        child: Padding(
          padding: EdgeInsets.fromLTRB(
            screenWidth * 0.000,
            screenWidth * 0.6,
            screenWidth * 0.00,
            screenWidth * 0.00,
          ),
          child: Container(
            width: screenWidth * 0.7,
            height: screenWidth * 0.25,
            decoration: ShapeDecoration(
              gradient: LinearGradient(
                begin: Alignment(-0.00, -1.00),
                end: Alignment(0, 1),
                colors: [Color(0xFF3E0858), Color(0xFF38022C)],
              ),
              shape: RoundedRectangleBorder(
                side:
                    BorderSide(width: screenWidth * 0.005, color: Colors.white),
                borderRadius: BorderRadius.circular(screenWidth * 0.06),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                screenWidth * 0.05,
                screenWidth * 0.00,
                screenWidth * 0.00,
                screenWidth * 0.03,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        eventName,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: screenWidth * 0.07,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          // Navigate to EventDescUi with necessary details
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => EventDescUi(
                                eventName: eventName,
                                eventTime: eventTime,
                                eventVenue: eventVenue,
                                eventDescription: eventDescription,
                              ),
                            ),
                          );
                        },
                        icon: Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                          size: screenWidth * 0.1,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: screenWidth * 0.002),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(
                          screenWidth * 0.1,
                          screenWidth * 0.00,
                          screenWidth * 0.00,
                          screenWidth * 0.00,
                        ),
                        child: Text(
                          eventTime,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: screenWidth * 0.04,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      SizedBox(width: screenWidth * 0.04),
                      Padding(
                        padding: EdgeInsets.fromLTRB(
                          screenWidth * 0.00,
                          screenWidth * 0.00,
                          screenWidth * 0.00,
                          screenWidth * 0.00,
                        ),
                        child: Text(
                          eventVenue,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: screenWidth * 0.04,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
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
      ),
    );
  }
}
