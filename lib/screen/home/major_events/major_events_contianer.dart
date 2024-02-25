import 'package:flutter/material.dart';
import 'package:murious_appp/screen/home/major_events/major_glass.dart';

class MajorEventContainer extends StatelessWidget {
  final String backgroundImagePath;
  final String eventName;
  final String eventDate;
  // final String eventDescp;
  const MajorEventContainer({
    Key? key,
    required this.backgroundImagePath,
    required this.eventName,
    required this.eventDate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Center(
      child: Padding(
        // Padding for the whole container
        padding: EdgeInsets.fromLTRB(
            screenWidth * 0.00, // left
            screenWidth * 0.05, // top
            screenWidth * 0.00, // right
            screenWidth * 0.00 // bottom
            ),
        child: Container(
          // alignment: Alignment.center, // Center its children
          width: screenWidth * 0.85, // Take full width
          height: screenHeight * .4, // 40% of screen height
          clipBehavior: Clip.antiAlias, // Clip overflow
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10), // Rounded corners
            ),
          ),
          child: Stack(
            children: [
              // Background image container
              Center(
                // child: Padding(
                //   padding: EdgeInsets.fromLTRB(
                //     screenWidth * 0.00, // left
                //     screenWidth * 0.08, // top
                //     screenWidth * 0.00, // right
                //     screenWidth * 0.00, // bottom
                //   ),
                child: Container(
                  alignment: Alignment.center,
                  width: screenWidth * 0.85, // 90% of screen width
                  height: screenHeight * 0.3, // 30% of screen height
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(backgroundImagePath),
                      fit: BoxFit.fill, // Fill the container
                    ),
                    borderRadius: BorderRadius.circular(screenWidth * 0.055),
                    border: Border.all(
                      color: Colors.white,
                      width: screenWidth * 0.003,
                    ),
                    // boxShadow: [
                    //   BoxShadow(
                    //     color: Color.fromARGB(255, 223, 213, 213),
                    //     offset: const Offset(
                    //       2,
                    //       1,
                    //     ),
                    //     blurRadius: 0,
                    //     spreadRadius: 0,
                    //   ), //BoxShadow
                    //   BoxShadow(
                    //     color: const Color.fromARGB(255, 223, 213, 213),
                    //     offset: const Offset(2.0, 2),
                    //     blurRadius: 0.0,
                    //     spreadRadius: 0.0,
                    //   ), //BoxShadow
                    // ],
                  ),
                ),
                // ),
              ),

              // Event glass container
              Center(
                child: MajorEventGlass(
                  eventName: eventName,
                  eventDate: eventDate,
                ),
              ),

              // Event date container
              Padding(
                padding: EdgeInsets.fromLTRB(
                  screenWidth * 0.04, // left
                  screenWidth * 0.14, // top
                  screenWidth * 0.04, // right
                  screenWidth * 0.00, // bottom
                ),
                child: Container(
                  // padding: EdgeInsets.only(
                  //     top: screenWidth * 0.013), // Adjust top padding
                  width: screenWidth * 0.29, // 10% of screen width
                  height: screenWidth * 0.08, // 15% of screen width

                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(-0.00, -1.00),
                      end: Alignment(0, 1),
                      colors: [Color(0xFF3E0858), Color(0xFF38022C)],
                    ),
                    borderRadius: BorderRadius.circular(screenWidth * 0.06),
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
                  child: Center(
                    child: Text(
                      'Major Events',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: screenWidth * 0.04,
                        fontFamily: 'Murious',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
