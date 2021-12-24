import 'package:app_studio_webstie/Constants/AppText.dart';
import 'package:app_studio_webstie/Navigation/PrivacyPolicy/PrivacyPolicyNavBar.dart';
import 'package:app_studio_webstie/Navigation/PrivacyPolicy/PrivacyPolicyNavDrawer.dart';
import 'package:flutter/material.dart';
import 'package:app_studio_webstie/Widgets/LegalPage.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return LegalPage(
      screenSize: screenSize,
      header: privacyPolicyHeaderText,
      body: privacyPolicyBodyText,
      navBar: PrivacyPolicyNavBar(
        context: context,
      ),
      navDrawer: PrivacyPolicyNavDrawer(
        context: context,
      ),
    );
  }
}
