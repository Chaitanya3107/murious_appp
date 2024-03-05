import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:provider/provider.dart';
import 'carousel_state.dart';

final List<String> imgList = [
  'assets/images/carosuel/DSC_0084.webp',
  'assets/images/carosuel/DSC_0253.webp',
  'assets/images/carosuel/DSC_0311.webp',
  'assets/images/carosuel/IMG_5704.webp',
  'assets/images/carosuel/DSC_0538.webp',
  'assets/images/carosuel/IMG_2893.webp',
  'assets/images/carosuel/IMG_2942.webp',
  'assets/images/carosuel/IMG_2969.webp',
  'assets/images/carosuel/IMG_3021.webp',
  'assets/images/carosuel/IMG_2932.webp',
  'assets/images/carosuel/IMG_5703.webp',
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
