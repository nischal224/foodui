import 'package:flutter/material.dart';
import 'package:foodui/pages/homepage.dart';

class Practise extends StatefulWidget {
  const Practise({super.key});

  @override
  State<Practise> createState() => _PractiseState();
}

class _PractiseState extends State<Practise> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.network(
              "https://images.pexels.com/photos/31100390/pexels-photo-31100390/free-photo-of-traditional-kyoto-shopfront-at-night-in-japan.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
              fit: BoxFit.cover,
            ),
          ),

          Homepage(),
        ],
      ),
    );
  }
}
