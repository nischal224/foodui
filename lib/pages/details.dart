import 'package:flutter/material.dart';
import 'package:foodui/pages/homepage.dart';
import 'package:foodui/widgets/app_text_field.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(left: 40, top: 40, right: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  InkWell(
                    borderRadius: BorderRadius.circular(50),
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey.shade200,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Icon(Icons.arrow_back_ios_outlined, size: 18),
                    ),
                  ),
                  SizedBox(width: 25),
                  Text('Details', style: Appwidget.boldtext()),
                ],
              ),
              SizedBox(height: 25),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 200,
                    width: double.infinity,
                    color: Colors.orange,
                  ),
                  Positioned(
                    top: -30,
                    right: 0,
                    child: Image.network(
                      'https://cdn-icons-png.flaticon.com/128/6978/6978255.png',
                      height: 150,
                      width: 400,
                    ),
                  ),
                  Positioned(
                    right: 20,
                    bottom: 20,
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Icon(Icons.heart_broken),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25),
              Container(
                padding: EdgeInsets.all(10),
                height: 50,
                width: 180,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.chevron_left_outlined, color: Colors.red),
                    Text("Uttara Coffe House"),
                  ],
                ),
              ),
              SizedBox(height: 25),
              Text("Pizza CalZone European", style: Appwidget.boldtext()),
              SizedBox(height: 15),
              Text(
                "Prosciutto e funghi is a pizza variety that is\ntopped with tomato souce",
                style: TextStyle(letterSpacing: 1),
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.star_border, color: Colors.deepOrange),
                      SizedBox(width: 4),
                      Text("4.7", style: Appwidget.boldtext()),
                    ],
                  ),
                  SizedBox(width: 20),
                  Row(
                    children: [
                      Image.network(
                        'https://cdn-icons-png.flaticon.com/128/2311/2311487.png',
                        scale: 4,
                        color: Colors.deepOrange,
                      ),
                      SizedBox(width: 4),
                      Text("Free", style: Appwidget.boldtext()),
                    ],
                  ),
                  SizedBox(width: 20),
                  Row(
                    children: [
                      Image.network(
                        'https://cdn-icons-png.flaticon.com/128/992/992700.png',
                        color: Colors.deepOrange,
                        scale: 5,
                      ),
                      SizedBox(width: 5),
                      Text("20 min", style: Appwidget.boldtext()),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Text("SIZE:"),
                  SizedBox(width: 15),
                  Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey.shade400,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Text("10''"),
                  ),
                  SizedBox(width: 15),
                  Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Text("14''", style: TextStyle(color: Colors.white)),
                  ),
                  SizedBox(width: 15),
                  Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey.shade400,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Text("16''"),
                  ),
                ],
              ),
              SizedBox(height: 15),

              Text("INGRIDENTS"),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.pinkAccent.shade100,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Icon(Icons.satellite),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.pinkAccent.shade100,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Icon(Icons.satellite),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.pinkAccent.shade100,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Icon(Icons.satellite),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.pinkAccent.shade100,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Icon(Icons.satellite),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.pinkAccent.shade100,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Icon(Icons.satellite),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Container(
                padding: EdgeInsets.all(25),
                width: double.infinity,

                decoration: BoxDecoration(
                  color: Colors.blueGrey.shade300,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          price.toString(),
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          width: 130,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(25),
                          ),

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: InkWell(
                                  onTap: () {
                                    if (count > 1) {
                                      count--;
                                    }
                                    setState(() {});
                                  },
                                  child: Icon(Icons.add),
                                ),
                              ),
                              Text(
                                count.toString(),
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: InkWell(
                                  borderRadius: BorderRadius.circular(50),
                                  onTap: () {
                                    count++;
                                    setState(() {});
                                  },
                                  child: Icon(Icons.add),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.deepOrange,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        "ADD TO CART",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  var count = 1;
  var price = r'$32';
}
