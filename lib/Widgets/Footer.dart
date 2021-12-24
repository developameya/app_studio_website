import 'package:flutter/material.dart';
import 'package:app_studio_webstie/Constants/AppColors.dart';
import 'package:app_studio_webstie/Widgets/ResponsiveWidget.dart';

class Footer extends StatelessWidget {
  final Size screenSize;
  const Footer({Key? key, required this.screenSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenSize.width,
      height: ResponsiveWidget.isSmallScreen(context) ? 30 : 40,
      color: headerColor,
      child: Center(
        child: Text(
          'Copyright ©2021 Ameya App Studio',
          style: TextStyle(
            fontFamily: 'Raleway',
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
