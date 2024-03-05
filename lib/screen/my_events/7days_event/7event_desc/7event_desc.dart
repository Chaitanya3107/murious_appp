import 'package:flutter/material.dart';
import 'package:murious_appp/screen/my_events/7days_event/upload/7design.dart';
import 'package:murious_appp/screen/my_events/7days_event/upload/7photos.dart';
import 'package:murious_appp/screen/my_events/7days_event/upload/frame_by_frame.dart';
import 'package:murious_appp/screen/my_events/7days_event/upload/picture_perfect.dart';

class SevenEventDesc extends StatelessWidget {
  final String eventName; // Event name
  final String eventTime; // Event time
  final String eventVenue; // Event venue
  final String eventDescription; // Event description

  const SevenEventDesc({
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
              // Event Header
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
                    // Event Name
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
                          fontFamily: 'Murious',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    // Event Time
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
                              fontFamily: 'Murious',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            eventTime,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: screenWidth * 0.05,
                              fontFamily: 'Murious',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Event Venue
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
                              fontFamily: 'Murious',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            eventVenue,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: screenWidth * 0.05,
                              fontFamily: 'Murious',
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
              // Event Description
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
                    // About Header
                    Text(
                      'Rules',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: screenWidth * 0.12,
                        fontFamily: 'Murious',
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.5,
                      ),
                    ),
                    SizedBox(height: screenWidth * 0.02),
                    // Event Description Text
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
                              fontFamily: 'Murious',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ),
                    if (eventName == '3 Days, 3 Designs')
                      SevenDesign(eventName: eventName)
                    // else if (eventName == '7 Days, 7 Photos')
                    //   SevenPhoto(eventName: eventName)
                    // else if (eventName == 'Picture Perfect')
                    //   PicturePerfect(eventName: eventName)
                    // else if (eventName == 'Frame by Frame')
                    //   FrameByFrame(eventName: eventName)
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
