import 'package:app_studio_webstie/Constants/AppColors.dart';
import 'package:app_studio_webstie/Constants/AppText.dart';
import 'package:app_studio_webstie/Constants/AppImages.dart';
import 'package:flutter/material.dart';
import 'ScreenshotsCarousel.dart';
import 'TextFormatter.dart';

TextFormatter _textFormatter = TextFormatter();

class MobileScreenShotsSection extends StatefulWidget {
  final Size screenSize;
  const MobileScreenShotsSection({Key? key, required this.screenSize})
      : super(key: key);

  @override
  _MobileScreenShotsSectionState createState() =>
      _MobileScreenShotsSectionState();
}

class _MobileScreenShotsSectionState extends State<MobileScreenShotsSection> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomStart,
      children: [
        Container(
          height: widget.screenSize.width,
          decoration: BoxDecoration(gradient: radialGradient),
        ),
        Column(
          children: [
            _textFormatter.sectionHeader(
                text: screenshotHeaderText, lineWidth: 250),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: ScreenShotCarousel(),
            ),
            _textFormatter.sectionHeader(
              text: appStoreHeaderText,
              fontSize: 28,
              lineWidth: 400,
              textColor: Colors.white,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50),
              child: InkWell(
                onTap: () {},
                child: Image.asset(
                  appStoreIconImage,
                  width: 120,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
