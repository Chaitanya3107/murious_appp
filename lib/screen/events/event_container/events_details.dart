// import 'package:flutter/material.dart';
// import 'package:murious_appp/screen/events/event_container/events_container.dart';

// class EventDetails extends StatefulWidget {
//   const EventDetails({
//     super.key,
//   });
//   @override
//   State<EventDetails> createState() => _EventDetailsState();
// }

// List<EventContainer> eventList = [
//   EventContainer(
//     backgroundImagePath: "assets/images/img_image_454.png",
//     eventName: "The Expanse",
//     eventDate: "15th Mar",
//     eventTime: "6:00 pm-10:00 am",
//     eventVenue: "LT1&LT2",
//   ),
//   EventContainer(
//     backgroundImagePath: "assets/images/img_image_454.png",
//     eventName: "Code Express",
//     eventDate: "16th Mar",
//     eventTime: "6:00 pm-8:00 pm",
//     eventVenue: "CL5",
//   ),
//   EventContainer(
//     backgroundImagePath: "assets/images/img_image_454.png",
//     eventName: "Design Race",
//     eventDate: "17th Mar",
//     eventTime: "5.30 pm-6:30 pm",
//     eventVenue: "CR8",
//   ),
// ];

// class _EventDetailsState extends State<EventDetails> {
//   List<String> listDate = [
//     'All',
//     '15th',
//     '16th',
//     '17th'
//   ]; // Define type explicitly
//   late String valueChoose = 'All'; // Initialize with a default value

//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;
//     return Center(
//       child: Stack(
//         children: [
//           Container(
//             child: DropdownButton<String>(
//               // Specify the type for DropdownButton
//               value: valueChoose,
//               onChanged: (String? newValue) {
//                 // Cast newValue to String
//                 setState(() {
//                   valueChoose =
//                       newValue ?? 'All'; // Use null-aware operator for safety
//                 });
//               },
//               items: listDate.map((valueItem) {
//                 return DropdownMenuItem(
//                   child: Text(valueItem),
//                   value: valueItem,
//                 );
//               }).toList(),
//             ),
//           ),
//           ListView.builder(
//             padding: EdgeInsets.only(bottom: screenWidth * 0.2),
//             itemCount: eventList.length,
//             itemBuilder: (context, index) {
//               var event = eventList[index];
//               return EventContainer(
//                 backgroundImagePath: event.backgroundImagePath,
//                 eventName: event.eventName,
//                 eventDate: event.eventDate,
//                 eventTime: event.eventTime,
//                 eventVenue: event.eventVenue,
//               );
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:murious_appp/screen/events/event_container/events_container.dart';

// class EventDetails extends StatefulWidget {
//   const EventDetails({
//     super.key,
//   });
//   @override
//   State<EventDetails> createState() => _EventDetailsState();
// }

// List<EventContainer> eventList = [
//   EventContainer(
//     backgroundImagePath: "assets/images/img_image_454.png",
//     eventName: "Code Express",
//     eventDate: "16th Mar",
//     eventTime: "6:00 pm-8:00 pm",
//     eventVenue: "CL5",
//     date: 16,
//   ),
//   EventContainer(
//     date: 15,
//     backgroundImagePath: "assets/images/img_image_454.png",
//     eventName: "The Expanse",
//     eventDate: "15th Mar",
//     eventTime: "8:00 pm-9:00 pm",
//     eventVenue: "LT1&LT2",
//   ),
//   EventContainer(
//     backgroundImagePath: "assets/images/img_image_454.png",
//     eventName: "Design Race",
//     eventDate: "17th Mar",
//     eventTime: "5.30 pm-6:30 pm",
//     eventVenue: "CR8",
//     date: 17,
//   ),
//   EventContainer(
//     backgroundImagePath: "assets/images/img_image_454.png",
//     eventName: "Fourth Event",
//     eventDate: "15th Mar",
//     eventTime: "6.30 pm-7:30 pm",
//     eventVenue: "CR8",
//     date: 15,
//   ),
//   EventContainer(
//     backgroundImagePath: "assets/images/img_image_454.png",
//     eventName: "Fifth Event",
//     eventDate: "16th Mar",
//     eventTime: "1.30 pm-2:30 pm",
//     eventVenue: "CR8",
//     date: 16,
//   ),
//   EventContainer(
//     backgroundImagePath: "assets/images/img_image_454.png",
//     eventName: "Sixth Event",
//     eventDate: "17th Mar",
//     eventTime: "3.30 pm-4:30 pm",
//     eventVenue: "CR8",
//     date: 17,
//   ),
//   EventContainer(
//     backgroundImagePath: "assets/images/img_image_454.png",
//     eventName: "Seventh Event",
//     eventDate: "15th Mar",
//     eventTime: "12.30 pm-1:30 pm",
//     eventVenue: "CR8",
//     date: 15,
//   ),
//   EventContainer(
//     backgroundImagePath: "assets/images/img_image_454.png",
//     eventName: "Eight Event",
//     eventDate: "16th Mar",
//     eventTime: "11.30 pm-12:30 pm",
//     eventVenue: "CR8",
//     date: 16,
//   ),
//   EventContainer(
//     backgroundImagePath: "assets/images/img_image_454.png",
//     eventName: "Ninth Event ",
//     eventDate: "17th Mar",
//     eventTime: "10.30 pm-11:30 pm",
//     eventVenue: "CR8",
//     date: 17,
//   ),
// ];

// class _EventDetailsState extends State<EventDetails> {
//   // List<String> listDate = [
//   //   'All',
//   //   '15th',
//   //   '16th',
//   //   '17th'
//   // ]; // Define type explicitly
//   // late String valueChoose = 'All'; // Initialize with a default value

//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;
//     return Center(
//       child: Stack(
//         children: [
//           // Positioned(
//           //   top: MediaQuery.of(context).padding.top + kToolbarHeight + 16,
//           //   left: 0,
//           //   right: 0,
//           //   bottom: 0,
//           // child:
//           ListView.builder(
//             // padding: EdgeInsets.only(bottom: screenWidth * 0.2),
//             padding: EdgeInsets.fromLTRB(
//                 0, screenWidth * 0.05, 0, screenWidth * 0.2),
//             itemCount: eventList.length,
//             itemBuilder: (context, index) {
//               var event = eventList[index];
//               return EventContainer(
//                 backgroundImagePath: event.backgroundImagePath,
//                 eventName: event.eventName,
//                 eventDate: event.eventDate,
//                 eventTime: event.eventTime,
//                 eventVenue: event.eventVenue,
//                 date: event.date,
//               );
//             },
//           ),
//           // Padding(
//           //   padding: EdgeInsets.fromLTRB(
//           //     screenWidth * 0.74, // left
//           //     screenWidth * 0.0, // top
//           //     screenWidth * 0.04, // right
//           //     screenWidth * 0.05, // bottom
//           //   ),
//           //   child: Container(
//           //     // padding: EdgeInsets.symmetric(horizontal: 16),
//           //     child: DropdownButton<String>(
//           //       // Specify the type for DropdownButton
//           //       value: valueChoose,
//           //       onChanged: (String? newValue) {
//           //         // Cast newValue to String
//           //         setState(() {
//           //           valueChoose =
//           //               newValue ?? 'All'; // Use null-aware operator for safety
//           //         });
//           //       },
//           //       items: listDate.map((valueItem) {
//           //         return DropdownMenuItem(
//           //           child: Text(valueItem),
//           //           value: valueItem,
//           //         );
//           //       }).toList(),
//           //     ),
//           //   ),
//           // ),
//           // ),
//         ],
//       ),
//     );
//   }
// }

// In the EventDetails widget:

class EventDetails extends StatefulWidget {
  final String? selectedDate; // New property to hold the selected date
  const EventDetails({
    super.key,
    required this.selectedDate,
  });

  @override
  State<EventDetails> createState() => _EventDetailsState();
}

List<EventContainer> eventList = [
  EventContainer(
    backgroundImagePath: "assets/images/img_image_454.png",
    eventName: "Code Express",
    eventDate: "15th Mar",
    eventTime: "6:00 pm-8:00 pm",
    eventVenue: "CL5",
    date: '15th',
  ),
  EventContainer(
    date: '16th',
    backgroundImagePath: "assets/images/img_image_454.png",
    eventName: "The Expanse",
    eventDate: "16th Mar",
    eventTime: "8:00 pm-9:00 pm",
    eventVenue: "LT1&LT2",
  ),
  EventContainer(
    backgroundImagePath: "assets/images/img_image_454.png",
    eventName: "Design Race",
    eventDate: "17th Mar",
    eventTime: "5.30 pm-6:30 pm",
    eventVenue: "CR8",
    date: '17th',
  ),
  EventContainer(
    backgroundImagePath: "assets/images/img_image_454.png",
    eventName: "Fourth Event",
    eventDate: "15th Mar",
    eventTime: "6.30 pm-7:30 pm",
    eventVenue: "CR8",
    date: '15th',
  ),
  EventContainer(
    backgroundImagePath: "assets/images/img_image_454.png",
    eventName: "Fifth Event",
    eventDate: "16th Mar",
    eventTime: "1.30 pm-2:30 pm",
    eventVenue: "CR8",
    date: '16th',
  ),
  EventContainer(
    backgroundImagePath: "assets/images/img_image_454.png",
    eventName: "Sixth Event",
    eventDate: "17th Mar",
    eventTime: "3.30 pm-4:30 pm",
    eventVenue: "CR8",
    date: '17th',
  ),
  EventContainer(
    backgroundImagePath: "assets/images/img_image_454.png",
    eventName: "Seventh Event",
    eventDate: "15th Mar",
    eventTime: "12.30 pm-1:30 pm",
    eventVenue: "CR8",
    date: '15th',
  ),
  EventContainer(
    backgroundImagePath: "assets/images/img_image_454.png",
    eventName: "Eight Event",
    eventDate: "16th Mar",
    eventTime: "11.30 pm-12:30 pm",
    eventVenue: "CR8",
    date: '16th',
  ),
  EventContainer(
    backgroundImagePath: "assets/images/img_image_454.png",
    eventName: "Ninth Event ",
    eventDate: "17th Mar",
    eventTime: "10.30 pm-11:30 pm",
    eventVenue: "CR8",
    date: '17th',
  ),
];
// In the _EventDetailsState class:

class _EventDetailsState extends State<EventDetails> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Center(
      child: Stack(
        children: [
          ListView.builder(
            padding: EdgeInsets.fromLTRB(
                0, screenWidth * 0.05, 0, screenWidth * 0.2),
            itemCount: eventList.length,
            itemBuilder: (context, index) {
              var event = eventList[index];
              // Filter event based on selected date
              if (widget.selectedDate == null ||
                  widget.selectedDate == 'All' ||
                  event.date == widget.selectedDate) {
                return EventContainer(
                  backgroundImagePath: event.backgroundImagePath,
                  eventName: event.eventName,
                  eventDate: event.eventDate,
                  eventTime: event.eventTime,
                  eventVenue: event.eventVenue,
                  date: event.date,
                );
              } else {
                return SizedBox(); // Return an empty container if date doesn't match
              }
            },
          ),
        ],
      ),
    );
  }
}
