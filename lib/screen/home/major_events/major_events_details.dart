import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:murious_appp/screen/home/major_events/major_event_state.dart';
import 'package:murious_appp/screen/home/major_events/major_events_contianer.dart';
import 'package:provider/provider.dart';

class MajorHomeDetails extends StatelessWidget {
  const MajorHomeDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    // Access the MajorEventState instance
    final MajorEventState majorEventState =
        Provider.of<MajorEventState>(context, listen: false);

    // Define the CarouselController
    final CarouselController _controller = CarouselController();

    // Set the current page when the frame is rendered
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      _controller.jumpToPage(majorEventState.currentIndex);
    });

    return Center(
      child: Padding(
        padding: EdgeInsets.fromLTRB(
          screenWidth * 0.00,
          screenWidth * 0.025,
          0,
          screenWidth * 0.625,
        ),
        child: CarouselSlider(
          carouselController: _controller, // Use the defined controller
          options: CarouselOptions(
            aspectRatio: screenWidth /
                (screenWidth * 0.98), // Adjust aspect ratio to fit the screen
            viewportFraction: 0.9,
            autoPlay: true,
            autoPlayInterval: Duration(milliseconds: 3200),
            autoPlayAnimationDuration: Duration(milliseconds: 1000),
            onPageChanged: (index, reason) {
              majorEventState.setCurrentIndex(index); // Update current index
            },
          ),
          items: eventList.map((event) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  child: MajorEventContainer(
                    backgroundImagePath: event.backgroundImagePath,
                    eventName: event.eventName,
                    eventDate: event.eventDate,
                  ),
                );
              },
            );
          }).toList(),
        ),
      ),
    );
  }
}

// Define a list of MajorEventContainer objects
List<MajorEventContainer> eventList = [
  MajorEventContainer(
    backgroundImagePath: "assets/images/img_image_454.png",
    eventName: "Code Express",
    eventDate: "8th Mar",
  ),
  MajorEventContainer(
    backgroundImagePath: "assets/images/img_image_454.png",
    eventName: "The Expanse",
    eventDate: "9th Mar",
  ),
  MajorEventContainer(
    backgroundImagePath: "assets/images/img_image_454.png",
    eventName: "Design Race",
    eventDate: "10th Mar",
  ),
  MajorEventContainer(
    backgroundImagePath: "assets/images/img_image_454.png",
    eventName: "Fourth Event",
    eventDate: "8th Mar",
  ),
];











// import 'package:flutter/material.dart';
// import 'package:murious_appp/screen/home/major_events/major_events_contianer.dart';

// class MajorHomeDetails extends StatelessWidget {
//   const MajorHomeDetails({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;

//     return Center(
//       child: Padding(
//         padding: EdgeInsets.fromLTRB(
//             screenWidth * 0.00, screenWidth * 0.025, 0, screenWidth * 0.625),
//         child: Container(
//           width: double.infinity,
//           height: screenWidth * 0.98,
//           child: ListView.separated(
//             separatorBuilder: (context, _) => SizedBox(
//               width: 0.0,
//             ),
//             scrollDirection: Axis.horizontal,
//             // padding: EdgeInsets.fromLTRB(
//             //   0,
//             //   screenWidth * 0.05,
//             //   0,
//             //   screenWidth * 0.2,
//             // ),
//             itemCount: eventList.length,
//             itemBuilder: (context, index) {
//               var event = eventList[index];
//               return MajorEventContainer(
//                 backgroundImagePath: event.backgroundImagePath,
//                 eventName: event.eventName,
//                 eventDate: event.eventDate,
//               );
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }

// List<MajorEventContainer> eventList = [
//   MajorEventContainer(
//     backgroundImagePath: "assets/images/img_image_454.png",
//     eventName: "Code Express",
//     eventDate: "8th Mar",
//   ),
//   MajorEventContainer(
//     backgroundImagePath: "assets/images/img_image_454.png",
//     eventName: "The Expanse",
//     eventDate: "9th Mar",
//   ),
//   MajorEventContainer(
//     backgroundImagePath: "assets/images/img_image_454.png",
//     eventName: "Design Race",
//     eventDate: "10th Mar",
//   ),
//   MajorEventContainer(
//     backgroundImagePath: "assets/images/img_image_454.png",
//     eventName: "Fourth Event",
//     eventDate: "8th Mar",
//   ),
// ];

