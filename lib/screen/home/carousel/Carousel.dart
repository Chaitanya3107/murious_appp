// import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';

// final List<String> imgList = [
//   'assets/images/carosuel/1Attack on Titan.jpg',
//   'assets/images/carosuel/5k-mercedes-amg-g63-4x4-dp-3840x2160.jpg',
//   'assets/images/carosuel/2022-The-Batman.jpg',
//   'assets/images/carosuel/dark-legacy-of-black-spider-man-rj-3840x2160.jpg',
//   'assets/images/carosuel/game-of-thrones-season-8-2019-tc-3840x2160.jpg',
//   'assets/images/carosuel/night-king-game-of-thrones-season-8-poster-v2-3840x2160.jpg',
//   'assets/images/carosuel/spider-man-2099-a-hero-from-the-future-js-5120x2880.jpg',
//   'assets/images/carosuel/spiderman-2-ps5-2023-5k-b7-3840x2160.jpg',
//   'assets/images/carosuel/uthe-flash-barry-allen-2023-61-3840x2160.jpg',
//   'assets/images/carosuel/venom-vs-spider-man-final-stand-ay-3840x2160.jpg',
//   'assets/images/carosuel/zoom.jpg',
// ];

// class ComplicatedImageDemo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;
//     return Scaffold(
//       backgroundColor: Colors.transparent,
//       body: Stack(
//         children: <Widget>[
//           Padding(
//             padding: EdgeInsets.only(bottom: screenWidth * 0.2),
//             // child: Positioned.fill(
//             child: Column(
//               children: <Widget>[
//                 Expanded(
//                   child: Container(),
//                 ),
//                 CarouselSlider(
//                   options: CarouselOptions(
//                     autoPlay: true,
//                     autoPlayInterval: Duration(
//                         milliseconds:
//                             2500), // Set autoPlayInterval to 3 seconds
//                     autoPlayAnimationDuration: Duration(
//                         milliseconds:
//                             800), // Set autoPlayAnimationDuration to 800 milliseconds
//                     aspectRatio: 16 /
//                         9, // Set the aspect ratio based on the width and height of your images
//                     enlargeCenterPage: true,
//                   ),
//                   items: imgList.map((item) {
//                     return Builder(
//                       builder: (BuildContext context) {
//                         return Container(
//                           width: MediaQuery.of(context).size.width,
//                           margin: EdgeInsets.symmetric(horizontal: 5.0),
//                           child: Image.asset(
//                             item,
//                             fit: BoxFit.cover,
//                           ),
//                         );
//                       },
//                     );
//                   }).toList(),
//                 ),
//               ],
//             ),
//             // ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:provider/provider.dart';

// final List<String> imgList = [
//   'assets/images/carosuel/1Attack on Titan.jpg',
//   'assets/images/carosuel/5k-mercedes-amg-g63-4x4-dp-3840x2160.jpg',
//   'assets/images/carosuel/2022-The-Batman.jpg',
//   'assets/images/carosuel/dark-legacy-of-black-spider-man-rj-3840x2160.jpg',
//   'assets/images/carosuel/game-of-thrones-season-8-2019-tc-3840x2160.jpg',
//   'assets/images/carosuel/night-king-game-of-thrones-season-8-poster-v2-3840x2160.jpg',
//   'assets/images/carosuel/spider-man-2099-a-hero-from-the-future-js-5120x2880.jpg',
//   'assets/images/carosuel/spiderman-2-ps5-2023-5k-b7-3840x2160.jpg',
//   'assets/images/carosuel/uthe-flash-barry-allen-2023-61-3840x2160.jpg',
//   'assets/images/carosuel/venom-vs-spider-man-final-stand-ay-3840x2160.jpg',
//   'assets/images/carosuel/zoom.jpg',
// ];

// class CarouselState extends ChangeNotifier {
//   int _currentIndex = 0;

//   int get currentIndex => _currentIndex;

// import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:provider/provider.dart';
// import 'carousel_state.dart'; // Import the CarouselState

// final List<String> imgList = [
//   'assets/images/carosuel/1Attack on Titan.jpg',
//   'assets/images/carosuel/5k-mercedes-amg-g63-4x4-dp-3840x2160.jpg',
//   // Add your image paths here
// ];

// class ComplicatedImageDemo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;
//     final carouselState = Provider.of<CarouselState>(context, listen: false);

//     return Stack(
//       children: <Widget>[
//         Padding(
//           padding: EdgeInsets.only(bottom: screenWidth * 0.2),
//           child: Positioned.fill(
//             child: Column(
//               children: <Widget>[
//                 Expanded(
//                   child: Container(),
//                 ),
//                 CarouselSlider(
//                   options: CarouselOptions(
//                     autoPlay: true,
//                     autoPlayInterval: Duration(milliseconds: 2500),
//                     autoPlayAnimationDuration: Duration(milliseconds: 800),
//                     aspectRatio: 16 / 9,
//                     enlargeCenterPage: true,
//                     onPageChanged: (index, reason) {
//                       carouselState.setCurrentIndex(index);
//                     },
//                   ),
//                   items: imgList.map((item) {
//                     return Builder(
//                       builder: (BuildContext context) {
//                         return Container(
//                           width: MediaQuery.of(context).size.width,
//                           margin: EdgeInsets.symmetric(horizontal: 5.0),
//                           child: Image.asset(
//                             item,
//                             fit: BoxFit.cover,
//                           ),
//                         );
//                       },
//                     );
//                   }).toList(),
//                   initialPage: carouselState.currentIndex,
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:provider/provider.dart';
// import 'carousel_state.dart';

// final List<String> imgList = [
//   'assets/images/carosuel/1Attack on Titan.jpg',
//   'assets/images/carosuel/5k-mercedes-amg-g63-4x4-dp-3840x2160.jpg',
//   'assets/images/carosuel/2022-The-Batman.jpg',
//   'assets/images/carosuel/dark-legacy-of-black-spider-man-rj-3840x2160.jpg',
//   'assets/images/carosuel/game-of-thrones-season-8-2019-tc-3840x2160.jpg',
//   'assets/images/carosuel/night-king-game-of-thrones-season-8-poster-v2-3840x2160.jpg',
//   'assets/images/carosuel/spider-man-2099-a-hero-from-the-future-js-5120x2880.jpg',
//   'assets/images/carosuel/spiderman-2-ps5-2023-5k-b7-3840x2160.jpg',
//   'assets/images/carosuel/uthe-flash-barry-allen-2023-61-3840x2160.jpg',
//   'assets/images/carosuel/venom-vs-spider-man-final-stand-ay-3840x2160.jpg',
//   'assets/images/carosuel/zoom.jpg',
// ];

// class ComplicatedImageDemo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;
//     final carouselState = Provider.of<CarouselState>(context, listen: false);
//     final controller = CarouselController();

//     // Ensure the currentIndex is not null before using it
//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       controller.jumpToPage(carouselState.currentIndex);
//     });

//     return Expanded(
//       // child: Column(
//       // children: <Widget>[
//       // Expanded(
//       child: CarouselSlider(
//         carouselController: controller,
//         options: CarouselOptions(
//           autoPlay: true,
//           autoPlayInterval: Duration(milliseconds: 2500),
//           autoPlayAnimationDuration: Duration(milliseconds: 800),
//           aspectRatio: 16 / 9,
//           enlargeCenterPage: true,
//           onPageChanged: (index, reason) {
//             carouselState.setCurrentIndex(index);
//           },
//         ),
//         items: imgList.map((item) {
//           return Builder(
//             builder: (BuildContext context) {
//               return Container(
//                 width: screenWidth,
//                 // margin: EdgeInsets.symmetric(horizontal: 5.0),
//                 child: Image.asset(
//                   item,
//                   fit: BoxFit.cover,
//                 ),
//               );
//             },
//           );
//         }).toList(),
//       ),
//       // ),
//       // ],
//       // ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:provider/provider.dart';
import 'carousel_state.dart';

final List<String> imgList = [
  'assets/images/carosuel/1Attack on Titan.jpg',
  'assets/images/carosuel/5k-mercedes-amg-g63-4x4-dp-3840x2160.jpg',
  'assets/images/carosuel/2022-The-Batman.jpg',
  'assets/images/carosuel/dark-legacy-of-black-spider-man-rj-3840x2160.jpg',
  'assets/images/carosuel/game-of-thrones-season-8-2019-tc-3840x2160.jpg',
  'assets/images/carosuel/night-king-game-of-thrones-season-8-poster-v2-3840x2160.jpg',
  'assets/images/carosuel/spider-man-2099-a-hero-from-the-future-js-5120x2880.jpg',
  'assets/images/carosuel/spiderman-2-ps5-2023-5k-b7-3840x2160.jpg',
  'assets/images/carosuel/uthe-flash-barry-allen-2023-61-3840x2160.jpg',
  'assets/images/carosuel/venom-vs-spider-man-final-stand-ay-3840x2160.jpg',
  'assets/images/carosuel/zoom.jpg',
];

class ComplicatedImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final carouselState = Provider.of<CarouselState>(context, listen: false);
    final controller = CarouselController();

    // Ensure the currentIndex is not null before using it
    WidgetsBinding.instance.addPostFrameCallback((_) {
      controller.jumpToPage(carouselState.currentIndex);
    });

    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Padding(
        padding: EdgeInsets.only(bottom: screenWidth * 0.16),
        child: CarouselSlider(
          carouselController: controller,
          options: CarouselOptions(
            autoPlay: true,
            autoPlayInterval: Duration(milliseconds: 3200),
            autoPlayAnimationDuration: Duration(milliseconds: 1000),
            aspectRatio: 16 / 9,
            enlargeCenterPage: true,
            onPageChanged: (index, reason) {
              carouselState.setCurrentIndex(index);
            },
          ),
          items: imgList.map((item) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: screenWidth,
                  child: Image.asset(
                    item,
                    fit: BoxFit.cover,
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
