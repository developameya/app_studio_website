import 'package:app_studio_webstie/Constants/AppColors.dart';
import 'package:app_studio_webstie/Constants/AppImages.dart';
import 'package:app_studio_webstie/Constants/AppText.dart';
import 'package:flutter/material.dart';
import 'TextFormatter.dart';

TextFormatter _textFormatter = TextFormatter();

class MobileHeroSection extends StatefulWidget {
  final Size screenSize;
  const MobileHeroSection({Key? key, required this.screenSize})
      : super(key: key);

  @override
  _MobileHeroSectionState createState() => _MobileHeroSectionState();
}

class _MobileHeroSectionState extends State<MobileHeroSection> {
  late double _containerHeight;
  @override
  void initState() {
    super.initState();
    _containerHeight = widget.screenSize.width * 1.7;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
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
                  onTap: () {},
                  child: Image.asset(
                    appStoreIconImage,
                    width: 120,
                  ),
                ),
              ),
              Image.asset(
                heroImage,
                width: _containerHeight / 2,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
