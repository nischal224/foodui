import 'package:flutter/material.dart';
import 'package:foodui/pages/chief/chiefHome.dart';
import 'package:foodui/pages/chief/myprofile.dart';
import 'package:foodui/pages/chief/review.dart';

import 'package:foodui/pages/practise.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Chiefhome());
  }
}
