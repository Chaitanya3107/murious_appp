import 'package:flutter/material.dart';
import 'package:murious_appp/models/user.dart';
import 'package:murious_appp/screen/schedule/schedule_container.dart';
import 'package:murious_appp/screen/schedule/schedule_date.dart';
import 'package:murious_appp/screen/schedule/schedule_details.dart';

class Schedule extends StatefulWidget {
  const Schedule({Key? key, required this.user}) : super(key: key);
  final UserObj user;

  @override
  _ScheduleState createState() => _ScheduleState();
}

List<List<ScheduleDetails>> scheduleList = [
  [
    ScheduleDetails(time: '5:00pm -\n6:00pm', event: 'The Expanse'),
    ScheduleDetails(time: '6:00pm -\n7:00pm', event: 'Another Event'),
    ScheduleDetails(time: '7:00pm -\n8:00pm', event: 'Third Event'),
  ],
  [
    ScheduleDetails(time: '7:00pm -\n8:00pm', event: 'Third Event'),
    ScheduleDetails(time: '8:00pm -\n9:00pm', event: 'Fourth Event'),
    ScheduleDetails(time: '7:00pm -\n8:00pm', event: 'Third Event'),
  ],
  [
    ScheduleDetails(time: '7:00pm -\n8:00pm', event: 'Fifth Event'),
    ScheduleDetails(time: '8:00pm -\n9:00pm', event: 'Sixth Event'),
    ScheduleDetails(time: '7:00pm -\n8:00pm', event: 'Seventh Event'),
  ],
  // Add more lists of ScheduleDetails objects as needed
];

class _ScheduleState extends State<Schedule> {
  final List<int> startingDays = [7, 8, 9]; // Your list of starting days

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        toolbarHeight:
            screenWidth * 0.2, // Adjust toolbar height based on screen width
        actions: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, screenWidth * 0.025,
                screenWidth * 0.085, 0), // Adjust padding based on screen width
            child: Image.asset(
              'assets/images/murious logo.png',
              width:
                  screenWidth * 0.12, // Adjust image size based on screen width
              height: screenWidth * 0.12,
            ),
          ),
        ],
        title: Padding(
          padding: EdgeInsets.fromLTRB(screenWidth * 0.02, screenWidth * 0.025,
              0, 0), // Adjust padding based on screen width
          child: Text(
            'Schedule',
            style: TextStyle(
              fontSize:
                  screenWidth * 0.12, // Adjust font size based on screen width
              fontWeight: FontWeight.bold,
              fontFamily: 'Murious',
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(
            screenWidth * 0.02), // Adjust padding based on screen width
        // padding: EdgeInsets.fromLTRB(screenWidth * 0.02, screenWidth * 0.02,
        //     screenWidth * 0.02, screenWidth * 0.08),
        child: ListView.builder(
          padding: EdgeInsets.fromLTRB(0, 0, 0,
              screenWidth * 0.14), // Adjust padding based on screen width
          itemCount: startingDays.length,
          itemBuilder: (context, index) {
            final startingDayIndex = index;
            final scheduleIndex =
                index % scheduleList.length; // Correct index calculation

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DateSection(
                  startingDay: startingDays[startingDayIndex],
                  month: 'March',
                ),
                SizedBox(height: screenWidth * 0.02),
                ScheduleContainer(
                  scheduleDetailsList: scheduleList[scheduleIndex],
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
