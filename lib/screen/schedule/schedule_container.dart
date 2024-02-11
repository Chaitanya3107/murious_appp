import 'package:flutter/material.dart';
import 'package:murious_appp/screen/schedule/schedule_details.dart';

class ScheduleContainer extends StatelessWidget {
  final List<ScheduleDetails> scheduleDetailsList;

  const ScheduleContainer({Key? key, required this.scheduleDetailsList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      // padding: EdgeInsets.all(screenWidth * 0.03),
      padding: EdgeInsets.fromLTRB(screenWidth * 0.03, screenWidth * 0.03,
          screenWidth * 0.03, screenWidth * 0.08),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            decoration: ShapeDecoration(
              gradient: LinearGradient(
                begin: Alignment(-0.00, -1.00),
                end: Alignment(0, 1),
                colors: [Color(0xFF3E0858), Color(0xFF38022C)],
              ),
              // color: Colors.black.withOpacity(0.2),
              shape: RoundedRectangleBorder(
                side:
                    BorderSide(width: screenWidth * 0.005, color: Colors.white),
                borderRadius: BorderRadius.circular(screenWidth * 0.06),
              ),
            ),
            child: Column(
              children: scheduleDetailsList
                  .map((details) => _buildScheduleRow(context, details))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildScheduleRow(BuildContext context, ScheduleDetails details) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Row(
      children: [
        Padding(
          padding: EdgeInsets.all(screenWidth * 0.05),
          child: Text(
            details.time,
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: screenWidth * 0.045,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(screenWidth * 0.02),
            child: Text(
              details.event,
              style: TextStyle(
                fontSize: screenWidth * 0.07,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}
