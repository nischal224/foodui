import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Appwidget {
  static TextStyle headerBold() {
    return TextStyle(fontWeight: FontWeight.bold, fontSize: 25);
  }

  static TextStyle boldtext() {
    return TextStyle(fontWeight: FontWeight.bold);
  }

  static TextStyle subheader() {
    return TextStyle(fontWeight: FontWeight.normal, fontSize: 16);
  }

  static SizedBox sizeheight() {
    return SizedBox(height: 20);
  }

  static Divider dividerHeight() {
    return Divider(height: 20);
  }

  static TextStyle boldTextFeildStyle() {
    return TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 35,
    );
  }

  static TextStyle titleText() {
    return TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w600,
      fontSize: 20,
    );
  }

  static BuildContext? get context => null;

  static Container buttomVerification() {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.deepOrange,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Text(
        "VERIFY",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
          fontSize: 18,
        ),
      ),
    );
  }

  static Container loginButton() {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.deepOrange,
        borderRadius: BorderRadius.circular(25),
      ),
      child: const Text(
        "LOG IN",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
    );
  }

  static Container signupBotton() {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.deepOrange,
        borderRadius: BorderRadius.circular(25),
      ),
      child: const Text(
        "LOG IN",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
    );
  }

  static Container buttonaccess() {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.deepOrange,
        borderRadius: BorderRadius.circular(25),
      ),
      child: const Text(
        "ACCESS LOCATION",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
    );
  }
}
