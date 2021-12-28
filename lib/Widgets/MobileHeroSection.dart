import 'dart:io';

import 'package:app_studio_webstie/Constants/AppColors.dart';
import 'package:app_studio_webstie/Constants/AppImages.dart';
import 'package:app_studio_webstie/Constants/AppText.dart';
import 'package:flutter/material.dart';
import 'TextFormatter.dart';

TextFormatter _textFormatter = TextFormatter();

class MobileHeroSection extends StatefulWidget {
  final Size screenSize;
  final GlobalKey heroKey;
  const MobileHeroSection(
      {Key? key, required this.screenSize, required this.heroKey})
      : super(key: key);

  @override
  _MobileHeroSectionState createState() => _MobileHeroSectionState();
}

class _MobileHeroSectionState extends State<MobileHeroSection> {
  late double _containerHeight;
  @override
  void initState() {
    super.initState();
    _containerHeight = widget.screenSize.width * 1.3;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          key: widget.key,
          height: _containerHeight,
          decoration: BoxDecoration(
            gradient: radialGradient,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            children: [
              SizedBox(height: 20),
              _textFormatter.heroHeader(text: heroHeaderText, fontSize: 28),
              _textFormatter.heroSubHeader(text: heroHeaderBlurb, fontSize: 20),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40),
                child: InkWell(
                  onTap: () {
                    print('mobile app store button tapped');
                    Link('https://apps.apple.com/ee/app/signary/id1575198986');
                  },
                  child: Image.asset(
                    appStoreIconImage,
                    width: 120,
                  ),
                ),
              ),
              Image.asset(
                heroImage,
                height: _containerHeight * 1.1,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
