import 'dart:io';

import 'package:app_studio_webstie/Constants/AppColors.dart';
import 'package:app_studio_webstie/Constants/AppText.dart';
import 'package:app_studio_webstie/Constants/AppImages.dart';
import 'package:flutter/material.dart';
import 'TextFormatter.dart';

TextFormatter _textFormatter = TextFormatter();

class MobileScreenShotsSection extends StatefulWidget {
  final Size screenSize;
  final GlobalKey screenshotKey;
  final GlobalKey downloadKey;
  const MobileScreenShotsSection({
    Key? key,
    required this.screenSize,
    required this.screenshotKey,
    required this.downloadKey,
  }) : super(key: key);

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
          key: widget.screenshotKey,
          children: [
            _textFormatter.sectionHeader(
              text: screenshotHeaderText,
              lineWidth: 250,
            ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(vertical: 8.0),
            //   child: ScreenshotsSlideshow(),
            // ),
            _textFormatter.sectionHeader(
              text: appStoreHeaderText,
              fontSize: 28,
              lineWidth: 420,
              lineColor: secondaryColor,
              textColor: Colors.white,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50),
              child: InkWell(
                key: widget.downloadKey,
                onTap: () =>
                    Link('https://apps.apple.com/ee/app/signary/id1575198986'),
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
