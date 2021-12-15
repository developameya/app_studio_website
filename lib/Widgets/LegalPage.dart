import 'package:app_studio_webstie/Constants/AppColors.dart';
import 'package:app_studio_webstie/NavBar/NavBar.dart';
import 'package:app_studio_webstie/Widgets/Footer.dart';
import 'package:app_studio_webstie/Widgets/ResponsiveWidget.dart';
import 'package:app_studio_webstie/Widgets/TextFormatter.dart';
import 'package:flutter/material.dart';

TextFormatter _textFormatter = TextFormatter();

class LegalPage extends StatelessWidget {
  final Size screenSize;
  final String header;
  final String body;
  const LegalPage({
    Key? key,
    required this.screenSize,
    required this.header,
    required this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NavBar(
        screenSize: screenSize,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: screenSize.width,
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
                  text: header,
                  lineWidth: 250,
                  textColor: Colors.white,
                  lineColor: secondaryColor,
                ),
                SizedBox(height: 50),
                _textFormatter.body(
                  text: body,
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
