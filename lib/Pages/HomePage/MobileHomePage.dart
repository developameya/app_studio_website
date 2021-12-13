import 'package:flutter/material.dart';
import 'package:app_studio_webstie/Widgets/MobileHeroSection.dart';

class MobileHomePage extends StatefulWidget {
  final Size screenSize;
  const MobileHomePage({Key? key, required this.screenSize}) : super(key: key);

  @override
  _MobileHomePageState createState() => _MobileHomePageState();
}

class _MobileHomePageState extends State<MobileHomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [MobileHeroSection(screenSize: widget.screenSize)],
      ),
    );
  }
}
