import 'package:flutter/material.dart';
import 'package:foodui/widgets/app_button.dart';

class Withrawsuccess extends StatefulWidget {
  const Withrawsuccess({super.key});

  @override
  State<Withrawsuccess> createState() => _WithrawsuccessState();
}

class _WithrawsuccessState extends State<Withrawsuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Image.network(
              'https://images.pexels.com/photos/8850709/pexels-photo-8850709.jpeg?auto=compress&cs=tinysrgb&w=300',
            ),
            SizedBox(height: 15),
            Text("withdraw Successful", style: Appwidget.headerBold()),
            Appwidget.sizeheight(),
            Container(
              alignment: Alignment.center,
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Text('OK', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
