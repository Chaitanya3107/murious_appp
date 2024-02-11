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
  List<String> listDate = ['All', '15th', '16th', '17th'];
  String? valueChoose;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        toolbarHeight: screenWidth * 0.2,
        actions: [
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
              fontSize: screenWidth * 0.13,
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
          EventDetails(
              selectedDate: valueChoose), // Pass selected date to EventDetails
          Padding(
            padding: EdgeInsets.fromLTRB(screenWidth * 0.76,
                screenWidth * 0.028, screenWidth * 0.04, screenWidth * 0.05),
            child: Container(
              width: screenWidth * 0.175,
              height: screenWidth * 0.08,
              decoration: ShapeDecoration(
                gradient: LinearGradient(
                  begin: Alignment(-0.00, -1.00),
                  end: Alignment(0, 1),
                  colors: [Color(0xFF3E0858), Color(0xFF38022C)],
                ),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                      width: screenWidth * 0.004, color: Colors.white),
                  borderRadius: BorderRadius.circular(screenWidth * 0.03),
                ),
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

// import 'package:flutter/material.dart';
// import 'package:murious_appp/models/user.dart';
// import 'package:murious_appp/screen/events/event_container/events_details.dart';

// class EventsPage extends StatefulWidget {
//   const EventsPage({Key? key, required this.user}) : super(key: key);
//   final UserObj user;

//   @override
//   State<EventsPage> createState() => _EventsPageState();
// }

// class _EventsPageState extends State<EventsPage> {
//   List<String> listDate = ['All', '15th', '16th', '17th'];
//   String? valueChoose;

//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;
//     return Scaffold(
//       backgroundColor: Colors.transparent,
//       appBar: AppBar(
//         toolbarHeight: screenWidth * 0.34,
//         actions: [
//           Column(
//             // mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               Row(
//                 // mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Padding(
//                     padding: EdgeInsets.fromLTRB(screenWidth * 0.00,
//                         screenWidth * 0.025, screenWidth * 0.28, 0),
//                     child: Text(
//                       'Events',
//                       style: TextStyle(
//                         fontSize: screenWidth * 0.13,
//                         fontWeight: FontWeight.bold,
//                         fontFamily: 'Montserrat',
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: EdgeInsets.fromLTRB(
//                         0, screenWidth * 0.025, screenWidth * 0.085, 0),
//                     child: Image.asset(
//                       'assets/images/murious logo.png',
//                       width: screenWidth * 0.12,
//                       height: screenWidth * 0.12,
//                     ),
//                   ),
//                 ],
//               ),
//               Padding(
//                 padding: EdgeInsets.fromLTRB(screenWidth * 0.61,
//                     screenWidth * 0.02, screenWidth * 0.04, 0),
//                 child: Container(
//                   width: screenWidth * 0.175,
//                   height: screenWidth * 0.08,
//                   decoration: ShapeDecoration(
//                     gradient: LinearGradient(
//                       begin: Alignment(-0.00, -1.00),
//                       end: Alignment(0, 1),
//                       colors: [Color(0xFF3E0858), Color(0xFF38022C)],
//                     ),
//                     shape: RoundedRectangleBorder(
//                       side: BorderSide(
//                           width: screenWidth * 0.004, color: Colors.white),
//                       borderRadius: BorderRadius.circular(screenWidth * 0.03),
//                     ),
//                   ),
//                   child: DropdownButton<String>(
//                     padding: EdgeInsets.only(left: screenWidth * 0.015),
//                     borderRadius: BorderRadius.circular(screenWidth * 0.03),
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: screenWidth * 0.04,
//                       fontFamily: 'Poppins',
//                       fontWeight: FontWeight.w500,
//                     ),
//                     dropdownColor:
//                         const Color.fromARGB(200, 63, 5, 96).withOpacity(1),
//                     icon: Icon(
//                       Icons.arrow_drop_down,
//                       color: Colors.white,
//                     ),
//                     iconSize: 25,
//                     isExpanded: true,
//                     underline: SizedBox(),
//                     hint: Text(
//                       'Date',
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: screenWidth * 0.04,
//                         fontFamily: 'Poppins',
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                     value: valueChoose,
//                     onChanged: (String? newValue) {
//                       setState(() {
//                         valueChoose = newValue;
//                       });
//                     },
//                     items: listDate.map((valueItem) {
//                       return DropdownMenuItem(
//                         child: Text(valueItem),
//                         value: valueItem,
//                       );
//                     }).toList(),
//                   ),
//                 ),
//               ),
//             ],
//           )
//         ],
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//       ),
//       body: Stack(
//         children: [
//           EventDetails(
//               selectedDate: valueChoose), // Pass selected date to EventDetails
//         ],
//       ),
//     );
//   }
// }
