import 'package:flutter/material.dart';
import 'package:murious_appp/models/user.dart';
import 'package:murious_appp/screen/events/event_container/events_details.dart';

class EventsPage extends StatefulWidget {
  const EventsPage({Key? key, required this.user}) : super(key: key);
  final UserObj user;

  @override
  State<EventsPage> createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
  // List of dates to be displayed in the dropdown
  List<String> listDate = ['All', '8th', '9th', '10th'];
  // Variable to store the currently selected date
  String? valueChoose;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        toolbarHeight: screenWidth * 0.2,
        actions: [
          // Murious logo in the app bar
          Padding(
            padding: EdgeInsets.fromLTRB(
                0, screenWidth * 0.025, screenWidth * 0.085, 0),
            child: Image.asset(
              'assets/images/murious logo.png',
              width: screenWidth * 0.12,
              height: screenWidth * 0.12,
            ),
          ),
        ],
        title: Padding(
          padding: EdgeInsets.fromLTRB(
              screenWidth * 0.02, screenWidth * 0.025, 0, 0),
          child: Text(
            'Events',
            style: TextStyle(
              fontSize: screenWidth * 0.12,
              fontWeight: FontWeight.bold,
              fontFamily: 'Montserrat',
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        children: [
          // Display the event details based on the selected date
          EventDetails(
              selectedDate: valueChoose), // Pass selected date to EventDetails
          // Dropdown button to select the date
          Padding(
            padding: EdgeInsets.fromLTRB(screenWidth * 0.76,
                screenWidth * 0.028, screenWidth * 0.04, screenWidth * 0.05),
            child: Container(
              width: screenWidth * 0.175,
              height: screenWidth * 0.08,
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
                      1,
                      1,
                    ),
                    blurRadius: 0,
                    spreadRadius: 0,
                  ), //BoxShadow
                  BoxShadow(
                    color: const Color.fromARGB(255, 223, 213, 213),
                    offset: const Offset(1.0, -0.1),
                    blurRadius: 0.0,
                    spreadRadius: 0.0,
                  ), //BoxShadow
                ],
              ),
              child: DropdownButton<String>(
                padding: EdgeInsets.only(left: screenWidth * 0.015),
                borderRadius: BorderRadius.circular(screenWidth * 0.03),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: screenWidth * 0.04,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
                dropdownColor:
                    const Color.fromARGB(200, 63, 5, 96).withOpacity(1),
                icon: Icon(
                  Icons.arrow_drop_down,
                  color: Colors.white,
                ),
                iconSize: 25,
                isExpanded: true,
                underline: SizedBox(),
                hint: Text(
                  'Date',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: screenWidth * 0.04,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                value: valueChoose,
                onChanged: (String? newValue) {
                  setState(() {
                    valueChoose = newValue;
                  });
                },
                // Dropdown menu items for each date
                items: listDate.map((valueItem) {
                  return DropdownMenuItem(
                    child: Text(valueItem),
                    value: valueItem,
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
