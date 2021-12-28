import 'package:app_studio_webstie/Constants/AppImages.dart';
import 'package:app_studio_webstie/Constants/AppText.dart';
import 'package:app_studio_webstie/Widgets/FeaturesRow.dart';
import 'package:flutter/material.dart';
import 'package:app_studio_webstie/Constants/Text/TextList.dart';
import 'TextFormatter.dart';

TextList _textList = TextList();
TextFormatter _textFormatter = TextFormatter();

class MobileFeaturesSection extends StatefulWidget {
  final Size screenSize;
  const MobileFeaturesSection({Key? key, required this.screenSize})
      : super(key: key);

  @override
  _MobileFeaturesSectionState createState() => _MobileFeaturesSectionState();
}

class _MobileFeaturesSectionState extends State<MobileFeaturesSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _textFormatter.sectionHeader(
            text: featuresHeaderText, fontSize: 28, lineWidth: 400),
        SizedBox(height: 50),
        FeaturesRow(
          imagePath: featuresImages[0],
          headerText: _textList.getFeatures(at: 0).Header,
          bodyText: _textList.getFeatures(at: 0).Body,
        ),
        FeaturesRow(
          imagePath: featuresImages[1],
          headerText: _textList.getFeatures(at: 1).Header,
          bodyText: _textList.getFeatures(at: 1).Body,
        ),
        FeaturesRow(
          imagePath: featuresImages[2],
          headerText: _textList.getFeatures(at: 2).Header,
          bodyText: _textList.getFeatures(at: 2).Body,
          leftMargin: 40,
          middleMargin: 80,
        ),
        FeaturesRow(
          imagePath: featuresImages[3],
          headerText: _textList.getFeatures(at: 3).Header,
          bodyText: _textList.getFeatures(at: 3).Body,
        )
      ],
    );
  }
}