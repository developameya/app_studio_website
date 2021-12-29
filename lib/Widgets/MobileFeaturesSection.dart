import 'package:app_studio_webstie/Constants/AppImages.dart';
import 'package:app_studio_webstie/Constants/AppText.dart';
import 'package:app_studio_webstie/Widgets/FeaturesColumn.dart';
import 'package:flutter/material.dart';
import 'package:app_studio_webstie/Constants/Text/TextList.dart';
import 'TextFormatter.dart';

TextList _textList = TextList();
TextFormatter _textFormatter = TextFormatter();

class MobileFeaturesSection extends StatefulWidget {
  final Size screenSize;
  final GlobalKey featuresKey;
  const MobileFeaturesSection({
    Key? key,
    required this.screenSize,
    required this.featuresKey,
  }) : super(key: key);

  @override
  _MobileFeaturesSectionState createState() => _MobileFeaturesSectionState();
}

class _MobileFeaturesSectionState extends State<MobileFeaturesSection> {
  @override
  Widget build(BuildContext context) {
    double verticalPadding = 50.0;
    return Column(
      key: widget.featuresKey,
      children: [
        _textFormatter.sectionHeader(
            text: featuresHeaderText, fontSize: 28, lineWidth: 400),
        SizedBox(height: 10),
        FeaturesColumn(
          verticalPadding: verticalPadding,
          imagePath: featuresImages[0],
          headerText: _textList.getFeatures(at: 0).Header,
          bodyText: _textList.getFeatures(at: 0).Body,
        ),
        FeaturesColumn(
            verticalPadding: verticalPadding,
            imagePath: featuresImages[1],
            headerText: _textList.getFeatures(at: 1).Header,
            bodyText: _textList.getFeatures(at: 1).Body),
        FeaturesColumn(
            verticalPadding: verticalPadding,
            imagePath: featuresImages[2],
            headerText: _textList.getFeatures(at: 2).Header,
            bodyText: _textList.getFeatures(at: 2).Body),
        FeaturesColumn(
            verticalPadding: verticalPadding,
            imagePath: featuresImages[3],
            headerText: _textList.getFeatures(at: 3).Header,
            bodyText: _textList.getFeatures(at: 3).Body),
      ],
    );
  }
}
