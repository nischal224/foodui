import 'package:flutter/material.dart';
import 'package:foodui/pages/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(Duration(seconds: 1));
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => Login()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      body: Center(
        child: RichText(
          text: TextSpan(
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            children: [
              TextSpan(text: 'f', style: TextStyle(color: Colors.black)),
              TextSpan(text: 'oo', style: TextStyle(color: Colors.orange)),
              TextSpan(text: 'd', style: TextStyle(color: Colors.black)),
            ],
          ),
        ),
      ),
    );
  }
}
