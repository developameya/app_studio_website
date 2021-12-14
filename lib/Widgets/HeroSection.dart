import 'package:app_studio_webstie/Constants/AppText.dart';
import 'package:app_studio_webstie/Widgets/TextFormatter.dart';
import 'package:app_studio_webstie/Widgets/ResponsiveWidget.dart';
import 'package:app_studio_webstie/Constants/AppColors.dart';
import 'package:flutter/material.dart';

import '../Constants/AppImages.dart';

TextFormatter _textFormatter = TextFormatter();

class HeroSection extends StatelessWidget {
  final Size screenSize;
  HeroSection({required this.screenSize});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: screenSize.width / 2.5,
          width: screenSize.width,
          decoration: BoxDecoration(
            gradient: radialGradient,
          ),
        ),
        Container(
          child: Padding(
            padding: ResponsiveWidget.isMediumScreen(context)
                ? EdgeInsets.only(
                    right: screenSize.width / 50,
                    left: screenSize.width / 50,
                    top: screenSize.height / 50,
                  )
                : EdgeInsets.only(
                    right: screenSize.width / 8,
                    left: screenSize.width / 8,
                    top: screenSize.height / 50,
                  ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  heroImage,
                  height: screenSize.width / 1.8,
                ),
                SizedBox(width: 80),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      _textFormatter.heroHeader(text: heroHeaderText),
                      SizedBox(height: 5),
                      _textFormatter.heroSubHeader(text: heroHeaderBlurb),
                      SizedBox(height: 80),
                      InkWell(
                        onTap: () {},
                        child: Image.asset(
                          appStoreIconImage,
                          width: 150,
                        ),
                      ),
                      SizedBox(height: 200),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
