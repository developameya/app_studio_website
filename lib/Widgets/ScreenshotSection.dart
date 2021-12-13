import 'package:app_studio_webstie/Constants/AppColors.dart';
import 'package:app_studio_webstie/Constants/AppImages.dart';
import 'package:app_studio_webstie/Widgets/ResponsiveWidget.dart';
import 'package:flutter/material.dart';
import 'package:app_studio_webstie/Widgets/ScreenshotsRow.dart';

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
                Column(
                  children: [
                    Text(
                      'Check it out!',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w200,
                          fontSize: 40),
                    ),
                    Container(
                      height: 2,
                      width: 250,
                      color: primaryColor,
                    ),
                  ],
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
                Column(
                  children: [
                    Text(
                      'Find Signary on the App Store',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w200,
                        fontSize: 40,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      height: 2,
                      width: 600,
                      color: Color(0xff998CEB),
                    ),
                  ],
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
