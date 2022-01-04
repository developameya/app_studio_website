import 'package:app_studio_webstie/Constants/AppColors.dart';
import 'package:app_studio_webstie/Constants/AppImages.dart';
import 'package:app_studio_webstie/Constants/AppText.dart';
import 'package:flutter/material.dart';
import 'NavItem.dart';
import 'ScreenshotsContent.dart';
import 'TextFormatter.dart';

NavItem _navItem = NavItem();
TextFormatter _textFormatter = TextFormatter();
const double margin = 30;

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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _textFormatter.sectionHeader(
              text: screenshotHeaderText,
              fontSize: 32,
              lineWidth: 230,
            ),
            SizedBox(height: margin),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ScreenshotContent(
                        imagePath: screenshots[0],
                        screenSize: widget.screenSize,
                      ),
                      SizedBox(width: margin),
                      ScreenshotContent(
                        imagePath: screenshots[1],
                        screenSize: widget.screenSize,
                      )
                    ],
                  ),
                  SizedBox(height: margin),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ScreenshotContent(
                        imagePath: screenshots[2],
                        screenSize: widget.screenSize,
                      ),
                      SizedBox(width: margin),
                      ScreenshotContent(
                        imagePath: screenshots[3],
                        screenSize: widget.screenSize,
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: margin),
            _textFormatter.sectionHeader(
              text: appStoreHeaderText,
              fontSize: 32,
              lineWidth: 320,
              lineColor: secondaryColor,
              textColor: Colors.white,
            ),
            Padding(
              key: widget.downloadKey,
              padding: const EdgeInsets.symmetric(vertical: 50),
              child: _navItem.AppStoreButton(),
            ),
          ],
        ),
      ],
    );
  }
}
