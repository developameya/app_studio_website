import 'package:flutter/material.dart';

class NavBarElement {
  MaterialButton button({required String ButtonTitle}) {
    return MaterialButton(
      onPressed: () {
        print(ButtonTitle);
      },
      child: Text(
        ButtonTitle,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
