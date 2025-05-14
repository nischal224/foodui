import 'package:flutter/material.dart';
import 'package:foodui/widgets/app_button.dart';
import 'package:foodui/widgets/chief.dart';

class Review extends StatefulWidget {
  const Review({super.key});

  @override
  State<Review> createState() => _ReviewState();
}

class _ReviewState extends State<Review> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Icon(Icons.arrow_back_ios_new_sharp),
                  ),
                  SizedBox(width: 25),
                  Text(
                    "Reviews",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Appwidget.sizeheight(),
              reviews(
                ppimage:
                    'https://images.pexels.com/photos/2468773/pexels-photo-2468773.jpeg?auto=compress&cs=tinysrgb&w=600',
                date: '20/12/2020',
                dots: (Icons.data_object_sharp),
                star: (Icons.star),
                subtitle:
                    "this food so tastyand delicious. Breakfast so fast delivered inmy place",
                title: "Great Food and Services",
              ),

              Appwidget.sizeheight(),
              reviews(
                ppimage:
                    'https://images.pexels.com/photos/2468773/pexels-photo-2468773.jpeg?auto=compress&cs=tinysrgb&w=600',
                date: '20/12/2020',
                dots: (Icons.data_object_sharp),
                star: (Icons.star),
                subtitle:
                    "this food so tastyand delicious. Breakfast so fast delivered inmy place",
                title: "Great Food and Services",
              ),
              Appwidget.sizeheight(),

              reviews(
                ppimage:
                    'https://images.pexels.com/photos/2468773/pexels-photo-2468773.jpeg?auto=compress&cs=tinysrgb&w=600',
                date: '20/12/2020',
                dots: (Icons.data_object_sharp),
                star: (Icons.star),
                subtitle:
                    "this food so tastyand delicious. Breakfast so fast delivered inmy place",
                title: "Great Food and Services",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
