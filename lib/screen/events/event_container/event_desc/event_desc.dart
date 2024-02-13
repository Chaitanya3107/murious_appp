// import 'package:flutter/material.dart';

// class EventDesc extends StatelessWidget {
//   final String eventName;
//   final String eventTime;
//   final String eventVenue;
//   final String eventDescription;

//   const EventDesc({
//     Key? key,
//     required this.eventName,
//     required this.eventTime,
//     required this.eventVenue,
//     required this.eventDescription,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;
//     final screenHeight = MediaQuery.of(context).size.height;
//     return Scaffold(
//       backgroundColor: Colors.transparent,
//       appBar: AppBar(
//         toolbarHeight: 80,
//         leading: IconButton(
//           padding: EdgeInsets.fromLTRB(screenWidth * 0.05, 10, 0, 0),
//           icon: const Icon(
//             Icons.arrow_back,
//             color: Colors.white,
//           ),
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           color: Colors.white,
//           iconSize: screenWidth * 0.11,
//         ),
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: EdgeInsets.fromLTRB(
//             screenWidth * 0.0,
//             screenWidth * 0.4,
//             screenWidth * 0.02,
//             screenWidth * 0.01,
//           ),
//           child: Column(
//             // crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Container(
//                 width: double.infinity,
//                 height: screenWidth * 0.4,
//                 decoration: ShapeDecoration(
//                   gradient: LinearGradient(
//                     begin: Alignment(-0.00, -1.00),
//                     end: Alignment(0, 1),
//                     colors: [Color(0xFF3E0858), Color(0xFF38022C)],
//                   ),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(screenWidth * 0.06),
//                   ),
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Padding(
//                       padding: EdgeInsets.fromLTRB(
//                         screenWidth * 0.07,
//                         screenWidth * 0.06,
//                         screenWidth * 0.0,
//                         screenWidth * 0.01,
//                       ),
//                       child: Text(
//                         eventName,
//                         textAlign: TextAlign.left,
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 38,
//                           fontFamily: 'Poppins',
//                           fontWeight: FontWeight.w500,
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: EdgeInsets.fromLTRB(
//                         screenWidth * 0.07,
//                         screenWidth * 0.00,
//                         screenWidth * 0.0,
//                         screenWidth * 0.02,
//                       ),
//                       child: Row(
//                         children: [
//                           Text(
//                             'Time : ',
//                             textAlign: TextAlign.left,
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 20,
//                               fontFamily: 'Poppins',
//                               fontWeight: FontWeight.w500,
//                             ),
//                           ),
//                           Text(
//                             eventTime,
//                             textAlign: TextAlign.left,
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 20,
//                               fontFamily: 'Poppins',
//                               fontWeight: FontWeight.w500,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Padding(
//                       padding: EdgeInsets.fromLTRB(
//                         screenWidth * 0.07,
//                         screenWidth * 0.00,
//                         screenWidth * 0.0,
//                         screenWidth * 0.04,
//                       ),
//                       child: Row(
//                         children: [
//                           Text(
//                             'Venue : ',
//                             textAlign: TextAlign.left,
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 20,
//                               fontFamily: 'Poppins',
//                               fontWeight: FontWeight.w500,
//                             ),
//                           ),
//                           Text(
//                             eventVenue,
//                             textAlign: TextAlign.left,
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 20,
//                               fontFamily: 'Poppins',
//                               fontWeight: FontWeight.w500,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(height: screenWidth * 0.03),
//               Padding(
//                 padding: EdgeInsets.fromLTRB(
//                   screenWidth * 0.05,
//                   0,
//                   screenWidth * 0.0,
//                   screenWidth * 0.0,
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Padding(
//                       padding: EdgeInsets.fromLTRB(
//                         screenWidth * 0.0,
//                         screenWidth * 0.00,
//                         screenWidth * 0.0,
//                         screenWidth * 0.00,
//                       ),
//                       child: Text(
//                         'About',
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 40,
//                           fontFamily: 'Poppins',
//                           fontWeight: FontWeight.w400,
//                           letterSpacing: 0.5,
//                         ),
//                       ),
//                     ),
//                     Container(
//                       constraints: BoxConstraints(
//                         maxHeight: screenHeight * 0.4,
//                       ), // Set maximum height
//                       child: SingleChildScrollView(
//                         child: Padding(
//                           padding: EdgeInsets.fromLTRB(
//                             screenWidth * 0.0,
//                             screenWidth * 0.01,
//                             screenWidth * 0.02,
//                             screenWidth * 0.1,
//                           ),
//                           child: Text(
//                             eventDescription,
//                             textAlign: TextAlign.justify,
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 22,
//                               fontFamily: 'Poppins',
//                               fontWeight: FontWeight.w300,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(height: screenWidth * 0.03),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class EventDesc extends StatelessWidget {
  final String eventName;
  final String eventTime;
  final String eventVenue;
  final String eventDescription;

  const EventDesc({
    Key? key,
    required this.eventName,
    required this.eventTime,
    required this.eventVenue,
    required this.eventDescription,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        toolbarHeight: 80,
        leading: IconButton(
          padding: EdgeInsets.fromLTRB(screenWidth * 0.05, 10, 0, 0),
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.white,
          iconSize: screenWidth * 0.11,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(
            screenWidth * 0.00,
            screenWidth * 0.4,
            screenWidth * 0.00,
            screenWidth * 0.00,
          ),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: screenWidth * 0.4,
                decoration: ShapeDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(-0.00, -1.00),
                    end: Alignment(0, 1),
                    colors: [Color(0xFF3E0858), Color(0xFF38022C)],
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(screenWidth * 0.06),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(
                        screenWidth * 0.08, // left
                        screenWidth * 0.00, // top
                        screenWidth * 0.00, // right
                        screenWidth * 0.00, // bottom
                      ),
                      child: Text(
                        eventName,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: screenWidth * 0.1,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(
                        screenWidth * 0.09, // left
                        screenWidth * 0.01, // top
                        screenWidth * 0.00, // right
                        screenWidth * 0.00, // bottom
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Time : ',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: screenWidth * 0.05,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            eventTime,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: screenWidth * 0.05,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(
                        screenWidth * 0.09, // left
                        screenWidth * 0.01, // top
                        screenWidth * 0.00, // right
                        screenWidth * 0.00, // bottom
                      ),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Venue : ',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: screenWidth * 0.05,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            eventVenue,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: screenWidth * 0.05,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenWidth * 0.03),
              Padding(
                padding: EdgeInsets.fromLTRB(
                  screenWidth * 0.08, // left
                  screenWidth * 0.00, // top
                  screenWidth * 0.05, // right
                  screenWidth * 0.00, // bottom
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'About',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: screenWidth * 0.12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.5,
                      ),
                    ),
                    SizedBox(height: screenWidth * 0.02),
                    Container(
                      constraints: BoxConstraints(
                        maxHeight: screenHeight * 0.4,
                      ), // Set maximum height
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(
                            screenWidth * 0.00, // left
                            screenWidth * 0.00, // top
                            screenWidth * 0.00, // right
                            screenWidth * 0.00, // bottom
                          ),
                          child: Text(
                            eventDescription,
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: screenWidth * 0.05,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenWidth * 0.03),
            ],
          ),
        ),
      ),
    );
  }
}
