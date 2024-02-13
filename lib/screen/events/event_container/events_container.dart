import 'package:flutter/material.dart';
import 'package:murious_appp/screen/events/event_container/glass_container.dart';

class EventContainer extends StatelessWidget {
  final String backgroundImagePath;
  final String eventName;
  final String eventDate;
  final String eventTime;
  final String eventVenue;
  final String date;
  final String eventDescription;
  // final String eventDescp;
  const EventContainer({
    Key? key,
    required this.backgroundImagePath,
    required this.eventName,
    required this.eventDate,
    required this.eventTime,
    required this.eventVenue,
    required this.date,
    required this.eventDescription,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Center(
      // child: Padding(
      //   // Padding for the whole container
      //   padding: EdgeInsets.fromLTRB(
      //     screenWidth * 0.05, // left
      //     screenWidth * 0.06, // top
      //     screenWidth * 0.00, // right
      //     screenWidth * 0.02, // bottom
      //   ),
      child: Container(
        // alignment: Alignment.center, // Center its children
        width: double.infinity, // Take full width
        height: screenHeight * 0.42, // 40% of screen height
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
                width: screenWidth * 0.9, // 90% of screen width
                height: screenHeight * 0.3, // 30% of screen height
                decoration: ShapeDecoration(
                  image: DecorationImage(
                    image: AssetImage(backgroundImagePath),
                    fit: BoxFit.fill, // Fill the container
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(screenWidth * 0.06),
                  ),
                ),
              ),
              // ),
            ),

            // Event glass container
            Center(
              child: EventGlass(
                eventName: eventName,
                eventTime: eventTime,
                eventVenue: eventVenue,
                eventDescription: eventDescription,
              ),
            ),

            // Event date container
            Padding(
              padding: EdgeInsets.fromLTRB(
                screenWidth * 0.78, // left
                screenWidth * 0.18, // top
                screenWidth * 0.04, // right
                screenWidth * 0.00, // bottom
              ),
              child: Container(
                padding: EdgeInsets.only(
                    top: screenWidth * 0.013), // Adjust top padding
                width: screenWidth * 0.12, // 10% of screen width
                height: screenWidth * 0.146, // 15% of screen width
                decoration: ShapeDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(-0.00, -1.00),
                    end: Alignment(0, 1),
                    colors: [Color(0xFF3E0858), Color(0xFF38022C)],
                  ),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                        width: screenWidth * 0.005, color: Colors.white),
                    borderRadius: BorderRadius.circular(screenWidth * 0.025),
                  ),
                ),
                child: Text(
                  eventDate,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: screenWidth * 0.04,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      // ),
    );
  }
}
