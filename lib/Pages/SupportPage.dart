import 'package:app_studio_webstie/Constants/AppColors.dart';
import 'package:app_studio_webstie/Constants/AppText.dart';
import 'package:app_studio_webstie/Navigation/Support/SupportNavBar.dart';
import 'package:app_studio_webstie/Navigation/Support/SupportNavDrawer.dart';
import 'package:app_studio_webstie/Widgets/Footer.dart';
import 'package:app_studio_webstie/Widgets/NavButton.dart';
import 'package:app_studio_webstie/Widgets/ResponsiveWidget.dart';
import 'package:app_studio_webstie/Widgets/TextFormatter.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:carousel_slider/carousel_slider.dart';

TextFormatter _textFormatter = TextFormatter();

class SupportPage extends StatelessWidget {
  const SupportPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: SupportNavBar(
        context: context,
      ),
      drawer: SupportNavDrawer(
        screenSize: screenSize,
        context: context,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: screenSize.width,
          height: screenSize.height,
          decoration: BoxDecoration(
            gradient: radialGradient,
          ),
          child: Padding(
              padding: ResponsiveWidget.isMediumScreen(context)
                  ? EdgeInsets.symmetric(
                      horizontal: screenSize.width / 50,
                      vertical: screenSize.width / 100)
                  : EdgeInsets.symmetric(
                      horizontal: screenSize.width / 8,
                      vertical: screenSize.width / 16),
              child: Column(
                children: [
                  _textFormatter.sectionHeader(
                    text: contactHeaderText,
                    lineWidth: 250,
                    textColor: Colors.white,
                    lineColor: secondaryColor,
                  ),
                  SizedBox(height: 50),
                  _textFormatter.body(
                    text: contactBodyText,
                    textColor: Colors.white,
                  ),
                  SizedBox(height: 10),
                  NavButton(
                    label: 'support@appup.in',
                    onTap: () {
                      launch('mailto: support@appup.in');
                    },
                  ),
                ],
              )),
        ),
      ),
      bottomSheet: Footer(
        screenSize: screenSize,
      ),
    );
  }
}
