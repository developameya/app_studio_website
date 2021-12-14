import 'package:app_studio_webstie/Constants/AppColors.dart';
import 'package:flutter/material.dart';

class MobileHeroSection extends StatefulWidget {
  final Size screenSize;
  const MobileHeroSection({Key? key, required this.screenSize})
      : super(key: key);

  @override
  _MobileHeroSectionState createState() => _MobileHeroSectionState();
}

class _MobileHeroSectionState extends State<MobileHeroSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.screenSize.width * 1.8,
      decoration: BoxDecoration(
        gradient: radialGradient,
      ),
      child: Column(),
    );
  }
}
