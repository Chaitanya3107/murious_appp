import 'package:flutter/material.dart';
import 'package:murious_appp/screen/events/event_container/events_container.dart';

// Define the EventDetails widget with a selectedDate property
class EventDetails extends StatefulWidget {
  final String? selectedDate; // New property to hold the selected date
  const EventDetails({
    Key? key,
    required this.selectedDate,
  }) : super(key: key);

  @override
  State<EventDetails> createState() => _EventDetailsState();
}

// Define a list of EventContainer objects
List<EventContainer> eventList = [
  EventContainer(
    backgroundImagePath: "assets/images/img_image_454.png",
    eventName: "Code Express",
    eventDate: "8th Mar",
    date: '8th',
    eventTime: "6:00 pm-8:00 pm",
    eventVenue: "CL5",
    eventDescription:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras malesuada dui nunc, sed tincidunt ligula fringilla et. Donec commodo purus ut lacus ultrices consectetur. Nullam eros neque, lobortis nec interdum in, sollicitudin scelerisque ligula.In efficitur arcu libero,Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras malesuada dui nunc, sed tincidunt ligula fringilla et. Donec commodo purus ut lacus ultrices consectetur. Nullam eros neque, lobortis nec interdum in, sollicitudin scelerisque ligula. In efficitur arcu lib',
  ),
  EventContainer(
    backgroundImagePath: "assets/images/img_image_454.png",
    eventName: "The Expanse",
    date: '9th',
    eventDate: "9th Mar",
    eventTime: "8:00 pm-9:00 pm",
    eventVenue: "LT1&LT2",
    eventDescription:
        'consectetur adipiscing elit. Cras malesuada dui nunc, sed tincidunt ligula fringilla et. Donec commodo purus ut lacus ultrices consectetur. Nullam eros neque, lobortis nec interdum in, sollicitudin scelerisque ligula.In efficitur arcu libero,Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras malesuada dui nunc, sed tincidunt ligula fringilla et. Donec commodo purus ut lacus ultrices consectetur. Nullam eros neque, lobortis nec interdum in, sollicitudin scelerisque ligula. In efficitur arcu lib',
  ),
  EventContainer(
    backgroundImagePath: "assets/images/img_image_454.png",
    eventName: "Design Race",
    eventDate: "10th Mar",
    date: '10th',
    eventTime: "5.30 pm-6:30 pm",
    eventVenue: "CR8",
    eventDescription:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras malesuada dui nunc, sed tincidunt ligula fringilla et. Donec commodo purus ut lacus ultrices consectetur. Nullam eros neque, lobortis nec interdum in, sollicitudin scelerisque ligula.In efficitur arcu libero,Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras malesuada dui nunc, sed tincidunt ligula fringilla et. Donec commodo purus ut lacus ultrices consectetur. Nullam eros neque, lobortis nec interdum in, sollicitudin scelerisque ligula. In efficitur arcu lib',
  ),
  EventContainer(
    backgroundImagePath: "assets/images/img_image_454.png",
    eventName: "Fourth Event",
    eventDate: "8th Mar",
    date: '8th',
    eventTime: "6.30 pm-7:30 pm",
    eventVenue: "CR8",
    eventDescription:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras malesuada dui nunc, sed tincidunt ligula fringilla et. Donec commodo purus ut lacus ultrices consectetur. Nullam eros neque, lobortis nec interdum in, sollicitudin scelerisque ligula.In efficitur arcu libero,Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras malesuada dui nunc, sed tincidunt ligula fringilla et. Donec commodo purus ut lacus ultrices consectetur. Nullam eros neque, lobortis nec interdum in, sollicitudin scelerisque ligula. In efficitur arcu lib',
  ),
  EventContainer(
    backgroundImagePath: "assets/images/img_image_454.png",
    eventName: "Fifth Event",
    eventDate: "9th Mar",
    date: '9th',
    eventTime: "1.30 pm-2:30 pm",
    eventVenue: "CR8",
    eventDescription:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras malesuada dui nunc, sed tincidunt ligula fringilla et. Donec commodo purus ut lacus ultrices consectetur. Nullam eros neque, lobortis nec interdum in, sollicitudin scelerisque ligula.In efficitur arcu libero,Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras malesuada dui nunc, sed tincidunt ligula fringilla et. Donec commodo purus ut lacus ultrices consectetur. Nullam eros neque, lobortis nec interdum in, sollicitudin scelerisque ligula. In efficitur arcu lib',
  ),
  EventContainer(
    backgroundImagePath: "assets/images/img_image_454.png",
    eventName: "Sixth Event",
    eventDate: "10th Mar",
    date: '10th',
    eventTime: "3.30 pm-4:30 pm",
    eventVenue: "CR8",
    eventDescription:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras malesuada dui nunc, sed tincidunt ligula fringilla et. Donec commodo purus ut lacus ultrices consectetur. Nullam eros neque, lobortis nec interdum in, sollicitudin scelerisque ligula.In efficitur arcu libero,Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras malesuada dui nunc, sed tincidunt ligula fringilla et. Donec commodo purus ut lacus ultrices consectetur. Nullam eros neque, lobortis nec interdum in, sollicitudin scelerisque ligula. In efficitur arcu lib',
  ),
  EventContainer(
    backgroundImagePath: "assets/images/img_image_454.png",
    eventName: "Seventh Event",
    eventDate: "8th Mar",
    date: '8th',
    eventTime: "12.30 pm-1:30 pm",
    eventVenue: "CR8",
    eventDescription:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras malesuada dui nunc, sed tincidunt ligula fringilla et. Donec commodo purus ut lacus ultrices consectetur. Nullam eros neque, lobortis nec interdum in, sollicitudin scelerisque ligula.In efficitur arcu libero,Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras malesuada dui nunc, sed tincidunt ligula fringilla et. Donec commodo purus ut lacus ultrices consectetur. Nullam eros neque, lobortis nec interdum in, sollicitudin scelerisque ligula. In efficitur arcu lib',
  ),
  EventContainer(
    backgroundImagePath: "assets/images/img_image_454.png",
    eventName: "Eight Event",
    eventDate: "9th Mar",
    date: '9th',
    eventTime: "11.30 pm-12:30 pm",
    eventVenue: "CR8",
    eventDescription:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras malesuada dui nunc, sed tincidunt ligula fringilla et. Donec commodo purus ut lacus ultrices consectetur. Nullam eros neque, lobortis nec interdum in, sollicitudin scelerisque ligula.In efficitur arcu libero,Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras malesuada dui nunc, sed tincidunt ligula fringilla et. Donec commodo purus ut lacus ultrices consectetur. Nullam eros neque, lobortis nec interdum in, sollicitudin scelerisque ligula. In efficitur arcu lib',
  ),
  EventContainer(
    backgroundImagePath: "assets/images/img_image_454.png",
    eventName: "Ninth Event ",
    eventDate: "10th Mar",
    date: '10th',
    eventTime: "10.30 pm-11:30 pm",
    eventVenue: "CR8",
    eventDescription:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras malesuada dui nunc, sed tincidunt ligula fringilla et. Donec commodo purus ut lacus ultrices consectetur. Nullam eros neque, lobortis nec interdum in, sollicitudin scelerisque ligula.In efficitur arcu libero,Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras malesuada dui nunc, sed tincidunt ligula fringilla et. Donec commodo purus ut lacus ultrices consectetur. Nullam eros neque, lobortis nec interdum in, sollicitudin scelerisque ligula. In efficitur arcu lib',
  ),
];

// Define the state class for the EventDetails widget
class _EventDetailsState extends State<EventDetails> {
  @override
  Widget build(BuildContext context) {
    // Get the screen width
    final screenWidth = MediaQuery.of(context).size.width;

    return Center(
      child: Stack(
        children: [
          // Build a ListView to display the events
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
                  eventDescription: event.eventDescription,
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
