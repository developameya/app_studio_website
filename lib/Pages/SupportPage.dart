import 'package:app_studio_webstie/Constants/AppColors.dart';
import 'package:app_studio_webstie/Constants/AppText.dart';
import 'package:app_studio_webstie/Navigation/Support/SupportNavBar.dart';
import 'package:app_studio_webstie/Navigation/Support/SupportNavDrawer.dart';
import 'package:app_studio_webstie/Widgets/Footer.dart';
import 'package:app_studio_webstie/Widgets/ResponsiveWidget.dart';
import 'package:app_studio_webstie/Widgets/TextFormatter.dart';
import 'package:flutter/material.dart';

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
          //increase the height of the container for to increase the scrollable area.
          height: screenSize.height * 1.1,
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
              ],
            ),
          ),
        ),
      ),
      bottomSheet: Footer(
        screenSize: screenSize,
      ),
    );
  }
}
