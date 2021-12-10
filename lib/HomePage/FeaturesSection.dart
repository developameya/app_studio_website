import 'package:flutter/material.dart';
import 'FeaturesElement.dart';
import 'Text/TextList.dart';

TextList textList = TextList();

class FeaturesSection extends StatelessWidget {
  const FeaturesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 250),
          child: Row(
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
                    color: Color(0xff998CEB),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 100,
        ),
        Row(
          children: [
            FeaturesElement(
              imagePath: 'assets/images/square_and_pencil.png',
              headerText: textList.getFeatures(at: 0).Header,
              bodyText: textList.getFeatures(at: 0).Body,
            ),
            SizedBox(width: 300),
            FeaturesElement(
              imagePath: 'assets/images/circle_and_dots.png',
              headerText: textList.getFeatures(at: 1).Header,
              bodyText: textList.getFeatures(at: 1).Body,
            ),
          ],
        ),
        SizedBox(height: 100),
        Row(
          children: [
            FeaturesElement(
              imagePath: 'assets/images/pencil.png',
              headerText: textList.getFeatures(at: 2).Header,
              bodyText: textList.getFeatures(at: 2).Body,
            ),
            SizedBox(width: 300),
            FeaturesElement(
              imagePath: 'assets/images/Trash.png',
              headerText: textList.getFeatures(at: 3).Header,
              bodyText: textList.getFeatures(at: 3).Body,
            ),
          ],
        ),
      ],
    );
  }
}
