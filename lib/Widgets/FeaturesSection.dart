import 'package:app_studio_webstie/Constants/AppColors.dart';
import 'package:app_studio_webstie/Constants/AppImages.dart';
import 'package:app_studio_webstie/Widgets/ResponsiveWidget.dart';
import 'package:flutter/material.dart';
import 'package:app_studio_webstie/Widgets/FeaturesColumn.dart';
import 'package:app_studio_webstie/Constants/Text/TextList.dart';

TextList textList = TextList();

class FeaturesSection extends StatelessWidget {
  final Size screenSize;

  FeaturesSection({required this.screenSize});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Text(
              'Why should you use Signary?',
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w200,
                  fontSize: 40),
            ),
            Container(
              height: 2,
              width: 550,
              color: primaryColor,
            ),
          ],
        ),
        SizedBox(
          height: 100,
        ),
        Row(
          children: [
            FeaturesColumn(
              imagePath: featuresImages[0],
              headerText: textList.getFeatures(at: 0).Header,
              bodyText: textList.getFeatures(at: 0).Body,
            ),
            SizedBox(
                width: ResponsiveWidget.isMediumScreen(context)
                    ? screenSize.width / 30
                    : screenSize.width / 10),
            FeaturesColumn(
              imagePath: featuresImages[1],
              headerText: textList.getFeatures(at: 1).Header,
              bodyText: textList.getFeatures(at: 1).Body,
            ),
          ],
        ),
        SizedBox(height: 100),
        Row(
          children: [
            FeaturesColumn(
              imagePath: featuresImages[2],
              headerText: textList.getFeatures(at: 2).Header,
              bodyText: textList.getFeatures(at: 2).Body,
            ),
            SizedBox(
                width: ResponsiveWidget.isMediumScreen(context)
                    ? screenSize.width / 30
                    : screenSize.width / 10),
            FeaturesColumn(
              imagePath: featuresImages[3],
              headerText: textList.getFeatures(at: 3).Header,
              bodyText: textList.getFeatures(at: 3).Body,
            ),
          ],
        ),
      ],
    );
  }
}
