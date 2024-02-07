import 'package:flutter/material.dart';

class ScheduleContainer extends StatelessWidget {
  final double height;

  const ScheduleContainer({Key? key, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Adjust the values accordingly
          Container(
            width: double.infinity,
            height: height,
            decoration: ShapeDecoration(
              color: Colors.black.withOpacity(0.2),
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 2.90, color: Colors.white),
                borderRadius: BorderRadius.circular(22),
              ),
            ),
            child: Column(
              children: _buildScheduleRows(),
            ),
          ),
        ],
      ),
    );
  }

  // Widget to build each row in the schedule
  List<Widget> _buildScheduleRows() {
    List<Widget> scheduleRows = [];

    // Schedule row 1
    scheduleRows.add(_buildScheduleRow('5:00pm -\n6:00pm', 'The Expanse'));

    // Schedule row 2
    scheduleRows.add(_buildScheduleRow('5:00pm -\n6:00pm', 'The Expanse'));

    // Schedule row 3
    scheduleRows.add(_buildScheduleRow('5:00pm -\n6:00pm', 'The Expanse'));

    // Add more rows as needed

    return scheduleRows;
  }

  Widget _buildScheduleRow(String time, String event) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(22),
          child: Text(
            time,
            textAlign: TextAlign.start,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              event,
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        // Padding(
        //   padding: const EdgeInsets.all(14),
        //   child: IconButton(
        //     onPressed: () {},
        //     icon: const Icon(
        //       Icons.arrow_forward_rounded,
        //       color: Colors.white,
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
