import 'package:flutter/material.dart';
import 'package:murious_appp/screen/events/event_container/event_desc/event_descUi.dart';

class EventGlass extends StatelessWidget {
  // Properties for storing event details
  final String eventName;
  final String eventTime;
  final String eventVenue;
  final String eventDescription;

  // Constructor for initializing event details
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
            alignment: Alignment.center,
            width: screenWidth * 0.79,
            height: screenWidth * 0.35,
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
            // child: Padding(
            //   padding: EdgeInsets.fromLTRB(
            //     screenWidth * 0.05,
            //     screenWidth * 0.00,
            //     screenWidth * 0.00,
            //     screenWidth * 0.03,
            //   ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Event name and forward arrow button
                // Padding(
                // padding: EdgeInsets.fromLTRB(
                //   screenWidth * 0.14,
                //   screenWidth * 0.00,
                //   screenWidth * 0.00,
                //   screenWidth * 0.00,
                // ),
                // child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      eventName,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: screenWidth * 0.074,
                        fontFamily: 'Murious',
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
                // ),
                // SizedBox(height: screenWidth * 0.002),
                // Event time and venue details
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      eventTime,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: screenWidth * 0.045,
                        fontFamily: 'Murious',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.04),
                    Text(
                      eventVenue,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: screenWidth * 0.045,
                        fontFamily: 'Murious',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            // ),
          ),
        ),
      ),
    );
  }
}
