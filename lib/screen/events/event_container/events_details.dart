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
      eventName: "Expanse 3.0",
      eventDate: "8th Mar",
      date: '8th',
      eventTime: "6:00 pm-8:00 pm",
      eventVenue: "CL5",
      eventDescription:
          'The Expanse, most awaited event of Murious, is a 24-hours long "hackathon" where JUITians will come together in teams of 2-4 members to create solutions for real-life problems. Expect challenges in tech, biotech, and bioinformatics — a creative mix of brainy fun! Let'
          "s"
          ' sit, play, eat, chill, and work to create the best we can!'),
  EventContainer(
    backgroundImagePath: "assets/images/img_image_454.png",
    eventName: "Web-O-Fiest",
    date: '9th',
    eventDate: "9th Mar",
    eventTime: "8:00 pm-9:00 pm",
    eventVenue: "LT1&LT2",
    eventDescription:
        'Coders, brace yourselves for the ultimate test of skill and speed!introducing '
        "web-o-fiesta,"
        ' where your coding mettle will be put to the ultimate test. In this electrifying event, you'
        "ll"
        ' face off against the clock and your fellow participants as you race to bring a ui design to life through the power of code.',
  ),
  EventContainer(
    backgroundImagePath: "assets/images/img_image_454.png",
    eventName: "Code Chaos",
    eventDate: "10th Mar",
    date: '10th',
    eventTime: "5.30 pm-6:30 pm",
    eventVenue: "CR8",
    eventDescription:
        'Well, to give the tech nerd in you a chance to flex your coding skills, Murious'
        "18"
        'presents to you "Code Chaos" it is a two hour long coding event. The challenges will be organized on HackerRank. Feel free to sink in the comfortzone of any programming languageyou wish to write your code in.',
  ),
  EventContainer(
    backgroundImagePath: "assets/images/img_image_454.png",
    eventName: "Level Up",
    eventDate: "8th Mar",
    date: '8th',
    eventTime: "6.30 pm-7:30 pm",
    eventVenue: "CR8",
    eventDescription:
        'Gaming isn’t just about the games we play, it’s the people we play with.so get your game on and start connecting with people from all over to build your tribe and thrive!',
  ),
  EventContainer(
    backgroundImagePath: "assets/images/img_image_454.png",
    eventName: "Interface Invent",
    eventDate: "9th Mar",
    date: '9th',
    eventTime: "1.30 pm-2:30 pm",
    eventVenue: "CR8",
    eventDescription: 'Step into the realm of digital design with '
        "UI/UX Showdown"
        ' – an electrifying event that challenges your creativity, innovation, and user-centric thinking! In this exhilarating competition, participants will harness the power of design tools like Figma, Photoshop, or any other platform to craft stunning UI/UX designs on given topics.',
  ),
  EventContainer(
    backgroundImagePath: "assets/images/img_image_454.png",
    eventName: "Code Cleanse",
    eventDate: "10th Mar",
    date: '10th',
    eventTime: "3.30 pm-4:30 pm",
    eventVenue: "CR8",
    eventDescription:
        'Unleash your inner code detective and embark on a quest to uncover hidden errors lurking within lines of code. with each bug squashed, you'
        "ll"
        ' inch closer to unraveling the mystery and claiming your rightful place among coding champions.',
  ),
  EventContainer(
    backgroundImagePath: "assets/images/img_image_454.png",
    eventName: "7 Days, 7 Designs",
    eventDate: "8th Mar",
    date: '8th',
    eventTime: "12.30 pm-1:30 pm",
    eventVenue: "CR8",
    eventDescription:
        'An exhilarating design challenge where creativity thrives and innovation knows no bounds! Over the course of seven days, participants will embark on a journey to create captivating logos for diverse companies. With daily challenges, expert evaluations, this event promisesto push your design skills to new heights.',
  ),
  EventContainer(
    backgroundImagePath: "assets/images/img_image_454.png",
    eventName: "7 Days, 7 Photos",
    eventDate: "9th Mar",
    date: '9th',
    eventTime: "11.30 pm-12:30 pm",
    eventVenue: "CR8",
    eventDescription:
        'An exciting photography event that challenges your creativity and perspective! Over the span of seven days, participants will immerse themselves in a world of photography, capturing stunning images on given topics. From landscapes to portraits, each day presents a new theme to explore, allowing photographers to showcase their unique vision and storytelling skills',
  ),
  EventContainer(
    backgroundImagePath: "assets/images/img_image_454.png",
    eventName: "Make It Print",
    eventDate: "10th Mar",
    date: '10th',
    eventTime: "10.30 pm-11:30 pm",
    eventVenue: "CR8",
    eventDescription: 'Get creative with '
        "Make it Print"
        '! Design unique prints for t-shirts or hoodies based on given topics. Submit your design for a chance to win, with the winning design printed on a hoodie. don'
        "t"
        ' miss this opportunity to showcase your creativity and wear your own artwork!',
  ),
  EventContainer(
    backgroundImagePath: "assets/images/img_image_454.png",
    eventName: "Picture Perfect",
    eventDate: "10th Mar",
    date: '10th',
    eventTime: "10.30 pm-11:30 pm",
    eventVenue: "CR8",
    eventDescription:
        'Participants are required to roam around the campus and click the best shot according to the provided theme which appeals to everyone. Rules are simple, the best shot wins!!',
  ),
  EventContainer(
    backgroundImagePath: "assets/images/img_image_454.png",
    eventName: "Frame by Frame",
    eventDate: "10th Mar",
    date: '10th',
    eventTime: "10.30 pm-11:30 pm",
    eventVenue: "CR8",
    eventDescription:
        'Participants will have to group themselves into sets of two or three members max and are supposed to make a video of minimum 30 seconds and maximum of 60 seconds to convey a "STORY".',
  ),
  EventContainer(
    backgroundImagePath: "assets/images/img_image_454.png",
    eventName: "BridgeMaking",
    eventDate: "10th Mar",
    date: '10th',
    eventTime: "10.30 pm-11:30 pm",
    eventVenue: "CR8",
    eventDescription:
        'The event focuses on bringing out the creative side of the participants. The main aim of the event is to build a bridge model using ice cream sticks on top of a cardboard base that can sustain a certain amount of weight, within the limited time and resources provided to the participants. The competition will help in showcasing your skills and how well you can come out with the best model keeping in mind time and resource management.',
  ),
  EventContainer(
    backgroundImagePath: "assets/images/img_image_454.png",
    eventName: "Tambola",
    eventDate: "10th Mar",
    date: '10th',
    eventTime: "10.30 pm-11:30 pm",
    eventVenue: "CR8",
    eventDescription:
        '"Tambola"– where luck meets excitement in a game of chance and anticipation! Gather your friends for an evening of fun and thrills as you play this beloved game, also known as housie or Bingo.',
  ),
  EventContainer(
    backgroundImagePath: "assets/images/img_image_454.png",
    eventName: "Soaring Skies",
    eventDate: "10th Mar",
    date: '10th',
    eventTime: "10.30 pm-11:30 pm",
    eventVenue: "CR8",
    eventDescription:
        'This exhilarating event invites participants to unleash their inner aviators as they compete in the ultimate paper airplane challenge. with precision and finesse, contestants will craft their paper planes and send them soaring through the air.',
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
