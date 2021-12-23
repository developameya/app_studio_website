import 'package:app_studio_webstie/Constants/AppImages.dart';
import 'package:app_studio_webstie/Constants/NavigatonRoutes.dart';
import 'package:app_studio_webstie/Pages/PrivacyPolicyPage.dart';
import 'package:app_studio_webstie/Pages/SupportPage.dart';
import 'package:app_studio_webstie/Pages/TermsOfUsePage.dart';
import 'package:flutter/material.dart';
import 'package:app_studio_webstie/Pages/HomePage/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    precacheImage(AssetImage(heroImage), context);
    precacheImage(AssetImage(screenshots[0]), context);
    precacheImage(AssetImage(screenshots[1]), context);
    precacheImage(AssetImage(screenshots[2]), context);
    precacheImage(AssetImage(screenshots[3]), context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ameya App Studio',
      // Start the app with the "/" named route.
      initialRoute: routeHome,
      routes: {
        //when navigating to 'routeHome' build the HomePage
        routeHome: (context) => const HomePage(),
        //when navigating to 'supportPage' build the SupportPage
        supportPage: (context) => SupportPage(),
        //when navigating to 'termsOfUsePage' build the termsOfUsePage
        termsOfUsePage: (context) => TermsOfUsePage(),
        //when navigating to 'privacyPolicyPage' build the privacyPolicyPage
        privacyPolicyPage: (context) => PrivacyPolicyPage(),
      },
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      //We don't need to define 'home' since we have defined the 'initialRoute' property.
      // home: HomePage(),
    );
  }
}
