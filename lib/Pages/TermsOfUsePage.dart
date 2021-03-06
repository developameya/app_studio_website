import 'package:app_studio_webstie/Constants/AppText.dart';
import 'package:app_studio_webstie/Navigation/TermsOfUse/TermsOfUseNavBar.dart';
import 'package:app_studio_webstie/Navigation/TermsOfUse/TermsOfUseNavDrawer.dart';
import 'package:flutter/material.dart';
import 'package:app_studio_webstie/Widgets/LegalPage.dart';

class TermsOfUsePage extends StatelessWidget {
  const TermsOfUsePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return LegalPage(
      screenSize: screenSize,
      header: termsOfUseHeaderText,
      body: termsOfUseBodyText,
      navBar: TermsOfUseNavBar(
        context: context,
      ),
      navDrawer: TermsOfUseNavDrawer(
        screenSize: screenSize,
        context: context,
      ),
    );
  }
}
