import 'package:app_studio_webstie/Constants/AppColors.dart';
import 'package:app_studio_webstie/Constants/AppImages.dart';
import 'package:app_studio_webstie/Widgets/ResponsiveWidget.dart';
import 'package:flutter/material.dart';
import 'package:app_studio_webstie/Widgets/ScreenshotsRow.dart';
import 'package:app_studio_webstie/Constants/AppText.dart';
import 'package:app_studio_webstie/Widgets/TextFormatter.dart';

TextFormatter _textFormatter = TextFormatter();

class ScreenshotSection extends StatelessWidget {
  final Size screenSize;
  ScreenshotSection({required this.screenSize});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomStart,
      children: [
        Container(
          height: screenSize.width / 2.5,
          width: screenSize.width,
          decoration: BoxDecoration(
            gradient: radialGradient,
          ),
        ),
        Padding(
          padding: ResponsiveWidget.isMediumScreen(context)
              ? EdgeInsets.symmetric(horizontal: screenSize.width / 50)
              : EdgeInsets.symmetric(horizontal: screenSize.width / 8),
          child: Container(
            child: Column(
              children: [
                _textFormatter.sectionHeader(
                  text: screenshotHeaderText,
                  lineWidth: 250,
                ),
                SizedBox(height: screenSize.width / 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ScreenshotsRow(
                      imagePath: screenshots[0],
                      screenSize: screenSize,
                    ),
                    ScreenshotsRow(
                      imagePath: screenshots[1],
                      screenSize: screenSize,
                    ),
                    ScreenshotsRow(
                      imagePath: screenshots[2],
                      screenSize: screenSize,
                    ),
                    ScreenshotsRow(
                      imagePath: screenshots[3],
                      screenSize: screenSize,
                    ),
                  ],
                ),
                SizedBox(height: 100),
                _textFormatter.sectionHeader(
                  text: appStoreHeaderText,
                  lineWidth: 600,
                  lineColor: secondaryColor,
                  textColor: Colors.white,
                ),
                SizedBox(height: 50),
                InkWell(
                  onTap: () {},
                  child: Image.asset(
                    'assets/images/Icon App Store@2x.png',
                    width: 150,
                  ),
                ),
                SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
