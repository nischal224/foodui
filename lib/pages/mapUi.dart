import 'package:flutter/material.dart';
import 'package:foodui/widgets/app_button.dart';
import 'package:foodui/widgets/app_text_field.dart';

class Mapui extends StatefulWidget {
  const Mapui({super.key});

  @override
  State<Mapui> createState() => _MapuiState();
}

class _MapuiState extends State<Mapui> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://cdn-icons-png.flaticon.com/128/355/355980.png',
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2,
            ),
            SizedBox(height: 50),
            Appwidget.buttonaccess(),
            SizedBox(height: 25),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "DFOOD WILL ACCESS YOUR LOCATION\n",
                    style: TextStyle(color: Colors.blueGrey),
                  ),
                  TextSpan(
                    text: "         ONLY WHILE USING THE APP\n",
                    style: TextStyle(color: Colors.blueGrey),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
