import 'package:flutter/material.dart';
import 'package:murious_appp/screen/home/home_bg.dart';
import 'package:murious_appp/screen/my_events/7days_event/7event_desc/7event_desc.dart';

class SevenEventDescUi extends StatelessWidget {
  final String eventName;
  final String eventTime;
  final String eventVenue;
  final String eventDescription;

  const SevenEventDescUi({
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
      body: Stack(
        children: [
          const FigmaToCodeApp(), // Background
          Container(
            width: double.infinity, // 90% of screen width
            height: screenHeight * .4, // 40% of screen height
            decoration: ShapeDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/img_image_454.png'),
                fit: BoxFit.fill, // Fill the container
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(screenWidth * 0.06),
              ),
            ),
          ),

          SevenEventDesc(
            eventName: eventName,
            eventTime: eventTime,
            eventVenue: eventVenue,
            eventDescription: eventDescription,
          ),
        ],
      ),
    );
  }
}
