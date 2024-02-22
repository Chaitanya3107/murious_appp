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
              fontWeight: FontWeight.w600,
              color: Colors.white,
              fontFamily: 'Murious',
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
                fontWeight: FontWeight.w600,
                color: Colors.white,
                fontFamily: 'Murious',
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}
