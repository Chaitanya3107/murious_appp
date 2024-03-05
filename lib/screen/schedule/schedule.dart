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
  // Schedule for March 8th
  [
    ScheduleDetails(date: 8, time: '5:00pm', event: 'Expanse 3.0'),
    ScheduleDetails(date: 8, time: '5:30pm -\n11:59pm', event: 'FIFA'),
    ScheduleDetails(date: 8, time: '5:30pm -\n11:59pm', event: 'Tekken 7'),
  ],
  // Schedule for March 8th
  [
    ScheduleDetails(date: 9, time: '5:30pm -\n6:30pm', event: 'Make it Print'),
    ScheduleDetails(date: 9, time: '4:00pm -\n7:30pm', event: 'Jamming'),
    ScheduleDetails(date: 9, time: '3:30pm -\n5:30pm', event: 'Tambola'),
  ],
  // Schedule for March 9th
  [
    ScheduleDetails(date: 9, time: '2:00pm -\n4:00pm', event: 'Web-o-Fiesta'),
    ScheduleDetails(date: 9, time: '2:00pm -\n6:00pm', event: 'Storage Wars'),
    ScheduleDetails(date: 9, time: '10:00am -\n12:00pm', event: 'Code Chaos'),
  ],
  // Schedule for March 9th
  [
    ScheduleDetails(date: 9, time: '4:00pm -\n5:00pm', event: 'Code Cleanse'),
    ScheduleDetails(
        date: 9, time: '8:00pm -\n9:00pm', event: 'Interface Invent'),
    ScheduleDetails(date: 9, time: '5:30pm -\n11:59pm', event: 'Valorant'),
  ],
  // Schedule for March 10th
  [
    ScheduleDetails(date: 10, time: '2:00pm -\n6:30pm', event: 'BridgeMaking'),
    ScheduleDetails(date: 10, time: '10:00am -\n12:00pm', event: 'Code Rumble'),
    ScheduleDetails(date: 10, time: '2:00pm -\n5:00pm', event: 'Code Relay'),
  ],
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
          itemCount: 1,
          itemBuilder: (context, index) {
            final startingDayIndex = index;
            final scheduleIndex =
                index % scheduleList.length; // Correct index calculation

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DateSection(
                  startingDay: 7,
                  month: 'March',
                ),
                SizedBox(height: screenWidth * 0.02),
                ScheduleContainer(
                  scheduleDetailsList: scheduleList[0],
                ),
                ScheduleContainer(
                  scheduleDetailsList: scheduleList[1],
                ),
                DateSection(
                  startingDay: 8,
                  month: 'March',
                ),
                SizedBox(height: screenWidth * 0.02),
                ScheduleContainer(
                  scheduleDetailsList: scheduleList[2],
                ),
                ScheduleContainer(
                  scheduleDetailsList: scheduleList[3],
                ),
                DateSection(
                  startingDay: 9,
                  month: 'March',
                ),
                SizedBox(height: screenWidth * 0.02),
                ScheduleContainer(
                  scheduleDetailsList: scheduleList[4],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
