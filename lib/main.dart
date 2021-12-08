import 'package:flutter/material.dart';
import 'package:app_studio_webstie/NavBar/NavBar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Raleway',
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: RadialGradient(
              center: Alignment.bottomLeft,
              radius: 5.0,
              colors: [
            Color.fromRGBO(60, 55, 92, 1),
            Color.fromRGBO(30, 27, 46, 1),
          ])),
      child: Column(
        children: <Widget>[NavBar()],
      ),
    );
  }
}
