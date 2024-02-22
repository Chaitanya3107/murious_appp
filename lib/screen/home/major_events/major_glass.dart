import 'package:flutter/material.dart';

class MajorEventGlass extends StatelessWidget {
  // Properties for storing event details
  final String eventName;
  final String eventDate;

  // Constructor for initializing event details
  const MajorEventGlass({
    Key? key,
    required this.eventName,
    required this.eventDate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Center(
      child: Padding(
        padding: EdgeInsets.fromLTRB(
          screenWidth * 0.000,
          screenWidth * 0.5,
          screenWidth * 0.00,
          screenWidth * 0.00,
        ),
        child: Container(
          width: screenWidth * 0.6,
          height: screenWidth * .2,
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                eventName,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: screenWidth * 0.062,
                  fontFamily: 'Murious',
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                eventDate,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: screenWidth * 0.042,
                  fontFamily: 'Murious',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
