import 'package:app_studio_webstie/Constants/AppImages.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ScreenShotCarousel extends StatefulWidget {
  const ScreenShotCarousel({Key? key}) : super(key: key);

  @override
  _ScreenShotCarouselState createState() => _ScreenShotCarouselState();
}

class _ScreenShotCarouselState extends State<ScreenShotCarousel> {
  final CarouselController _carouselController = CarouselController();

  List<Widget> generateImageTiles() {
    return screenshots
        .map(
          (element) => ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(element),
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    var imageSliders = generateImageTiles();
    return CarouselSlider(
      items: imageSliders,
      options: CarouselOptions(
        scrollPhysics: NeverScrollableScrollPhysics(),
        enlargeCenterPage: true,
        autoPlay: true,
        aspectRatio: 8 / 18,
      ),
      carouselController: _carouselController,
    );
  }
}
