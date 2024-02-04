import 'package:flutter/material.dart';
import 'package:murious_appp/models/user.dart';
import 'package:murious_appp/screen/schedule/schedule_container.dart';
import 'package:murious_appp/screen/schedule/schedule_date.dart';

class Schedule extends StatefulWidget {
  const Schedule({Key? key, required this.user}) : super(key: key);
  final UserObj user;

  @override
  // ignore: library_private_types_in_public_api
  _ScheduleState createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
  final List<int> startingDays = [14, 15, 16]; // Your list of starting days

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/images/murious logo.png',
              width: 50,
              height: 50,
            ),
          ),
        ],
        title: const Text(
          'Schedule',
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            fontFamily: 'Montserrat',
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 60),
          itemCount: startingDays.length * 2 - 1, // Adjust the item count
          itemBuilder: (context, index) {
            if (index.isOdd) {
              return const SizedBox(height: 10);
            } else {
              final startingDayIndex =
                  index ~/ 2; // Adjust the index for the list
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DateSection(
                    startingDay: startingDays[startingDayIndex],
                    month: 'March',
                  ),
                  const SizedBox(height: 10),
                  const ScheduleContainer(height: 280),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
