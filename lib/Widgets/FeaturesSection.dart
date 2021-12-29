import 'package:app_studio_webstie/Constants/AppImages.dart';
import 'package:app_studio_webstie/Constants/AppText.dart';
import 'package:app_studio_webstie/Widgets/ResponsiveWidget.dart';
import 'package:flutter/material.dart';
import 'package:app_studio_webstie/Widgets/FeaturesColumn.dart';
import 'package:app_studio_webstie/Constants/Text/TextList.dart';
import 'TextFormatter.dart';

TextList _textList = TextList();
TextFormatter _textFormatter = TextFormatter();

class FeaturesSection extends StatelessWidget {
  final Size screenSize;
  final GlobalKey dataKey;

  FeaturesSection({required this.screenSize, required this.dataKey});

  @override
  Widget build(BuildContext context) {
    return Column(
      key: dataKey,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _textFormatter.sectionHeader(text: featuresHeaderText, lineWidth: 550),
        SizedBox(
          height: 100,
        ),
        Row(
          children: [
            Expanded(
              child: FeaturesColumn(
                imagePath: featuresImages[0],
                headerText: _textList.getFeatures(at: 0).Header,
                bodyText: _textList.getFeatures(at: 0).Body,
              ),
            ),
            SizedBox(
                width: ResponsiveWidget.isMediumScreen(context)
                    ? screenSize.width / 30
                    : screenSize.width / 10),
            Expanded(
              child: FeaturesColumn(
                imagePath: featuresImages[1],
                headerText: _textList.getFeatures(at: 1).Header,
                bodyText: _textList.getFeatures(at: 1).Body,
              ),
            ),
          ],
        ),
        SizedBox(height: 100),
        Row(
          children: [
            Expanded(
              child: FeaturesColumn(
                imagePath: featuresImages[2],
                headerText: _textList.getFeatures(at: 2).Header,
                bodyText: _textList.getFeatures(at: 2).Body,
              ),
            ),
            SizedBox(
                width: ResponsiveWidget.isMediumScreen(context)
                    ? screenSize.width / 30
                    : screenSize.width / 10),
            Expanded(
              child: FeaturesColumn(
                imagePath: featuresImages[3],
                headerText: _textList.getFeatures(at: 3).Header,
                bodyText: _textList.getFeatures(at: 3).Body,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
