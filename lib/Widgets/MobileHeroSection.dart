import 'package:app_studio_webstie/Constants/AppColors.dart';
import 'package:app_studio_webstie/Constants/AppImages.dart';
import 'package:app_studio_webstie/Constants/AppText.dart';
import 'package:app_studio_webstie/Widgets/NavItem.dart';
import 'package:flutter/material.dart';
import 'TextFormatter.dart';

TextFormatter _textFormatter = TextFormatter();
NavItem _navItem = NavItem();

class MobileHeroSection extends StatefulWidget {
  final Size screenSize;
  final GlobalKey heroKey;
  const MobileHeroSection({
    Key? key,
    required this.screenSize,
    required this.heroKey,
  }) : super(key: key);

  @override
  _MobileHeroSectionState createState() => _MobileHeroSectionState();
}

class _MobileHeroSectionState extends State<MobileHeroSection> {
  late double _containerHeight;
  @override
  void initState() {
    super.initState();
    //fixed the container height as it was incorrectly resizing while transforming from desktop to mobile layout.
    _containerHeight = 50 * 12;
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
                child: _navItem.AppStoreButton(),
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
