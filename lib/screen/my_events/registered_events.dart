import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:murious_appp/models/user.dart';
import 'package:murious_appp/screen/events/event_container/events_container.dart';
import 'package:murious_appp/screen/my_events/7days_event/7days_container.dart';
import 'package:murious_appp/services/database.dart';
import 'package:murious_appp/shared/loading2.dart';
import 'package:provider/provider.dart';

class RegisteredEvents extends StatefulWidget {
  const RegisteredEvents({Key? key, required this.uid}) : super(key: key);
  final String uid;

  @override
  State<RegisteredEvents> createState() => _RegisteredEventsState();
}

List<EventContainer> eventList = [
  EventContainer(
      backgroundImagePath: "assets/images/img_image_454.png",
      eventName: "Expanse 3.0",
      eventDate: "8th Mar",
      date: '8th',
      eventTime: "5:00 pm",
      eventVenue: "LT-1,2,3",
      eventDescription:
          'The Expanse, most awaited event of Murious, is a 24-hours long "hackathon" where JUITians will come together in teams of 2-4 members to create solutions for real-life problems. Expect challenges in tech, biotech, and bioinformatics — a creative mix of brainy fun! Let'
          "s"
          ' sit, play, eat, chill, and work to create the best we can!'),
  EventContainer(
    backgroundImagePath: "assets/images/img_image_454.png",
    eventName: "Web-O-Fiest",
    date: '9th',
    eventDate: "9th Mar",
    eventTime: "2:00 pm-4:00 pm",
    eventVenue: "CR-4",
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
    eventDate: "9th Mar",
    date: '9th',
    eventTime: "10.00 am-12:00 pm",
    eventVenue: "CL-4",
    eventDescription:
        'Well, to give the tech nerd in you a chance to flex your coding skills, Murious'
        "18"
        'presents to you "Code Chaos" it is a two hour long coding event. The challenges will be organized on HackerRank. Feel free to sink in the comfortzone of any programming languageyou wish to write your code in.',
  ),
  EventContainer(
    backgroundImagePath: "assets/images/img_image_454.png",
    eventName: "Tekken 7",
    eventDate: "8th Mar",
    date: '8th',
    eventTime: "5.30 pm-11:59 pm",
    eventVenue: "CR-2",
    eventDescription:
        'Gaming isn’t just about the games we play, it’s the people we play with.so get your game on and start connecting with people from all over to build your tribe and thrive!',
  ),
  EventContainer(
    backgroundImagePath: "assets/images/img_image_454.png",
    eventName: "FIFA",
    eventDate: "8th Mar",
    date: '8th',
    eventTime: "5.30 pm-11:59 pm",
    eventVenue: "CR-1",
    eventDescription:
        'Gaming isn’t just about the games we play, it’s the people we play with.so get your game on and start connecting with people from all over to build your tribe and thrive!',
  ),
  EventContainer(
    backgroundImagePath: "assets/images/img_image_454.png",
    eventName: "Valorant",
    eventDate: "9th Mar",
    date: '9th',
    eventTime: "5.30 pm-11:59 pm",
    eventVenue: "CL-4",
    eventDescription:
        'Gaming isn’t just about the games we play, it’s the people we play with.so get your game on and start connecting with people from all over to build your tribe and thrive!',
  ),
  EventContainer(
    backgroundImagePath: "assets/images/img_image_454.png",
    eventName: "BGMI",
    eventDate: "9th Mar",
    date: '9th',
    eventTime: "5.30 pm-11:59 pm",
    eventVenue: "LT-1,2",
    eventDescription:
        'Gaming isn’t just about the games we play, it’s the people we play with.so get your game on and start connecting with people from all over to build your tribe and thrive!',
  ),
  EventContainer(
    backgroundImagePath: "assets/images/img_image_454.png",
    eventName: "Interface Invent",
    eventDate: "9th Mar",
    date: '9th',
    eventTime: "5.00 pm-6:30 pm",
    eventVenue: "CR-7",
    eventDescription: 'Step into the realm of digital design with '
        "UI/UX Showdown"
        ' – an electrifying event that challenges your creativity, innovation, and user-centric thinking! In this exhilarating competition, participants will harness the power of design tools like Figma, Photoshop, or any other platform to craft stunning UI/UX designs on given topics.',
  ),
  EventContainer(
    backgroundImagePath: "assets/images/img_image_454.png",
    eventName: "Code Cleanse",
    eventDate: "9th Mar",
    date: '9th',
    eventTime: "4.00 pm-5:00 pm",
    eventVenue: "CR-8",
    eventDescription:
        'Unleash your inner code detective and embark on a quest to uncover hidden errors lurking within lines of code. with each bug squashed, you'
        "ll"
        ' inch closer to unraveling the mystery and claiming your rightful place among coding champions.',
  ),
  EventContainer(
    backgroundImagePath: "assets/images/img_image_454.png",
    eventName: "3 Days, 3 Designs",
    eventDate: "8th Mar",
    date: '8th',
    eventTime: "12.30 pm-1:30 pm",
    eventVenue: "CR8",
    eventDescription: 'Submit your design below for 3 days.',
  ),
  EventContainer(
    backgroundImagePath: "assets/images/img_image_454.png",
    eventName: "Make It Print",
    eventDate: "8th Mar",
    date: '8th',
    eventTime: "5.30 pm-6:30 pm",
    eventVenue: "CR-4",
    eventDescription: 'Get creative with '
        "Make it Print"
        '! Design unique prints for t-shirts or hoodies based on given topics. Submit your design for a chance to win, with the winning design printed on a hoodie. don'
        "t"
        ' miss this opportunity to showcase your creativity and wear your own artwork!',
  ),
  EventContainer(
    backgroundImagePath: "assets/images/img_image_454.png",
    eventName: "Picture Perfect",
    eventDate: "8th Mar",
    date: '8th',
    eventTime: "10.30 pm-11:30 pm",
    eventVenue: "JUIT",
    eventDescription:
        'Participants are required to roam around the campus and click the best shot according to the provided theme which appeals to everyone. Rules are simple, the best shot wins!!',
  ),
  EventContainer(
    backgroundImagePath: "assets/images/img_image_454.png",
    eventName: "Frame by Frame",
    eventDate: "8th Mar",
    date: '8th',
    eventTime: "10.30 pm-11:30 pm",
    eventVenue: "JUIT",
    eventDescription:
        'Participants will have to group themselves into sets of two or three members max and are supposed to make a video of minimum 30 seconds and maximum of 60 seconds to convey a "STORY".',
  ),
  EventContainer(
    backgroundImagePath: "assets/images/img_image_454.png",
    eventName: "BridgeMaking",
    eventDate: "10th Mar",
    date: '10th',
    eventTime: "2.00 pm-6:30 pm",
    eventVenue: "BBC",
    eventDescription:
        'The event focuses on bringing out the creative side of the participants. The main aim of the event is to build a bridge model using ice cream sticks on top of a cardboard base that can sustain a certain amount of weight, within the limited time and resources provided to the participants. The competition will help in showcasing your skills and how well you can come out with the best model keeping in mind time and resource management.',
  ),
  EventContainer(
    backgroundImagePath: "assets/images/img_image_454.png",
    eventName: "Code Relay",
    eventDate: "10th Mar",
    date: '10th',
    eventTime: "2.00 pm-5:00 pm",
    eventVenue: "CL-4",
    eventDescription:
        'This event is a unique and exciting competition that combines elements of relay race and problem-solving. It is open to all participants and teams consist of 4 members. each team member will solve one quarter of the problem before passing on a baton, represented by a mouse and pen, to the next team member. The first team to solve all the problems wins the competition.',
  ),
  EventContainer(
    backgroundImagePath: "assets/images/img_image_454.png",
    eventName: "Code Rumble",
    eventDate: "10th Mar",
    date: '10th',
    eventTime: "10.00 am-12:00 pm",
    eventVenue: "CL-4",
    eventDescription:
        'prepare for an adrenaline-fueled coding extravaganza inspired by WWE'
        's'
        ' royal rumble – Welcome to Code Rumble! thisdynamic event pits coding enthusiasts against each otherin a series of ruthless rounds,eliminating contenders until only the coding champion.',
  ),
  EventContainer(
    backgroundImagePath: "assets/images/img_image_454.png",
    eventName: "Storage Wars",
    eventDate: "9th Mar",
    date: '9th',
    eventTime: "2.00 pm-6:00 pm",
    eventVenue: "BBC",
    eventDescription:
        'In "Storage Wars," students engage in bidding on storage containers using fake currency, inspecting only the exterior. Teams of 2-4 collaborate, emphasizing strategic thinking and resource management. The event fosters negotiation, financial literacy, and teamwork skills in a competitive setting.',
  ),
  EventContainer(
    backgroundImagePath: "assets/images/img_image_454.png",
    eventName: "Jamming",
    eventDate: "8th Mar",
    date: '8th',
    eventTime: "4.00 pm-7:30 pm",
    eventVenue: "Cafeteria",
    eventDescription:
        'The Leo Club is organizing a jamming session for the tech fest. It is a casual gathering where musicians come together to play without preparation. The aim is to create a fun environment for students and faculty to showcase their musical talents and connect through music. This event is significant as it is the first one in six years, providing a memorable experience for everyone involved.',
  ),
  EventContainer(
    backgroundImagePath: "assets/images/img_image_454.png",
    eventName: "Tambola",
    eventDate: "8th Mar",
    date: '8th',
    eventTime: "3.30 pm-5:30 pm",
    eventVenue: "Audi",
    eventDescription:
        '"Tambola"– where luck meets excitement in a game of chance and anticipation! Gather your friends for an evening of fun and thrills as you play this beloved game, also known as housie or Bingo.',
  ),
  EventContainer(
    backgroundImagePath: "assets/images/img_image_454.png",
    eventName: "Soaring Skies",
    eventDate: "8th Mar",
    date: '8th',
    eventTime: "3.30 pm-5:30 pm",
    eventVenue: "Audi",
    eventDescription:
        'This exhilarating event invites participants to unleash their inner aviators as they compete in the ultimate paper airplane challenge. with precision and finesse, contestants will craft their paper planes and send them soaring through the air.',
  ),
];

bool loading = false;

class _RegisteredEventsState extends State<RegisteredEvents> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final currentUser = Provider.of<UserObj?>(context);
    return StreamBuilder<List<DocumentSnapshot>>(
        initialData: [], // Provide empty list initially
        stream: DatabaseService(uid: currentUser!.uid).murious,
        builder: (context, snapshot) {
          // switch (snapshot.connectionState) {
          // case ConnectionState.waiting:
          // return Loading(); // Show loading indicator while waiting
          // case ConnectionState.active:
          if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}'); // Handle errors
          }

          // Access the list of document snapshots
          final List<DocumentSnapshot>? eventSnapshots = snapshot.data!;
          // print(eventSnapshots[0].data());

          // Check if data is available
          if (eventSnapshots!.isEmpty) {
            return Loading2();
          }
          //  Check if the document snapshot contains data
          if (eventSnapshots[0].data() == null &&
              eventSnapshots[1].data() == null) {
            setState(() {
              loading = true;
            });
            return Loading2();
          }

          final List<Map<String, dynamic>?>? allUserData = [];
          for (final eventSnapshot in eventSnapshots) {
            final Map<String, dynamic>? userData =
                eventSnapshot.data() as Map<String, dynamic>?;
            if (userData != null) {
              allUserData?.add(userData);
            }
          }

          final filteredEventName = [];
          for (final userData in allUserData!) {
            final Map<String, dynamic>? eventsData =
                userData?['events'] as Map<String, dynamic>?;
            if (eventsData != null) {
              eventsData.forEach((eventName, value) {
                if (value == true) {
                  filteredEventName.add(eventName);
                }
              });
            }
          }

          final registeredEvents = eventList
              .where((event) => filteredEventName.contains(event.eventName));

          return ListView.builder(
            padding: EdgeInsets.fromLTRB(
                0, screenWidth * 0.05, 0, screenWidth * 0.2),
            itemCount: registeredEvents.length,
            itemBuilder: (context, index) {
              // Access individual document snapshot
              final event = registeredEvents.elementAt(index);
              if (event.eventName == "3 Days, 3 Designs") {
                return SevenDaysContainer(
                  backgroundImagePath: event.backgroundImagePath,
                  eventName: event.eventName,
                  eventDate: event.eventDate,
                  eventTime: event.eventTime,
                  eventVenue: event.eventVenue,
                  date: event.date,
                  eventDescription: event.eventDescription,
                );
              }
              // else if (event.eventName == "7 Days, 7 Photos") {
              //   return SevenDaysContainer(
              //     backgroundImagePath: event.backgroundImagePath,
              //     eventName: event.eventName,
              //     eventDate: event.eventDate,
              //     eventTime: event.eventTime,
              //     eventVenue: event.eventVenue,
              //     date: event.date,
              //     eventDescription: event.eventDescription,
              //   );
              // }
              // else if (event.eventName == "Frame by Frame") {
              //   return SevenDaysContainer(
              //     backgroundImagePath: event.backgroundImagePath,
              //     eventName: event.eventName,
              //     eventDate: event.eventDate,
              //     eventTime: event.eventTime,
              //     eventVenue: event.eventVenue,
              //     date: event.date,
              //     eventDescription: event.eventDescription,
              //   );
              // } else if (event.eventName == "Picture Perfect") {
              //   return SevenDaysContainer(
              //     backgroundImagePath: event.backgroundImagePath,
              //     eventName: event.eventName,
              //     eventDate: event.eventDate,
              //     eventTime: event.eventTime,
              //     eventVenue: event.eventVenue,
              //     date: event.date,
              //     eventDescription: event.eventDescription,
              //   );
              // }
              else {
                return EventContainer(
                  backgroundImagePath: event.backgroundImagePath,
                  eventName: event.eventName,
                  eventDate: event.eventDate,
                  eventTime: event.eventTime,
                  eventVenue: event.eventVenue,
                  date: event.date,
                  eventDescription: event.eventDescription,
                );
              }
              // return null;
            },
          );
          // case ConnectionState.done:
          // Handle done state if needed
          // return Text(
          // 'Done'); // You can replace this with appropriate content
          // default:
          // return SizedBox(); // Handle other states if necessary
          // }
        });
  }
}
