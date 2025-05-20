import 'package:flutter/material.dart';
import 'package:foodui/pages/burger.dart';
import 'package:foodui/pages/details.dart';
import 'package:foodui/pages/offers.dart';
import 'package:foodui/pages/profile.dart';
import 'package:foodui/widgets/app_button.dart';
import 'package:foodui/widgets/app_text_field.dart';

final scaffoldKey = GlobalKey<ScaffoldState>();

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            insetPadding: EdgeInsets.all(20),
            child: Offers(),
          );
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      key: scaffoldKey,
      extendBodyBehindAppBar: true,
      drawer: Profile(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Menu Button
                  InkWell(
                    borderRadius: BorderRadius.circular(50),
                    onTap: () {
                      scaffoldKey.currentState!.openDrawer();
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Icon(Icons.align_horizontal_left),
                    ),
                  ),

                  // Delivery Info Section
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'DELIVER TO',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                'Halal Lab Office',
                                style: TextStyle(color: Colors.white),
                              ),
                              Icon(
                                Icons.keyboard_arrow_down,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                  // Bag + Badge
                  Expanded(
                    child: Stack(
                      alignment: Alignment.topRight,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Icon(Icons.shopping_bag, color: Colors.white),
                        ),
                        Positioned(
                          top: 0,
                          right: 0,
                          child: Container(
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Center(
                              child: Text(
                                '2',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(height: 25),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Hey Halal,  ",
                      style: TextStyle(color: Colors.white),
                    ),
                    TextSpan(
                      text: "Good Afternoon",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Appwidget.sizeheight(),

              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey.shade300,
                  hintText: 'Search dishes, resturants',
                  prefixIcon: Icon(Icons.search, color: Colors.black38),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              Appwidget.sizeheight(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "ALL Categories",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "See All",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      Icon(Icons.keyboard_arrow_right_outlined),
                    ],
                  ),
                ],
              ),
              Appwidget.sizeheight(),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: SizedBox(
                  height: 40,

                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      InkWell(
                        borderRadius: BorderRadius.circular(25),

                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Details()),
                          );
                        },
                        child: buildCategoryCard(
                          label: "All",
                          imageUrl:
                              'https://cdn-icons-png.flaticon.com/128/14261/14261136.png',
                          backgroundColor: Colors.orangeAccent.shade200,
                        ),
                      ),
                      SizedBox(width: 8),
                      buildCategoryCard(
                        label: "Hot Dog",
                        imageUrl:
                            'https://cdn-icons-png.flaticon.com/128/1256/1256450.png',
                        backgroundColor: Colors.blueGrey.shade100,
                      ),
                      SizedBox(width: 8),
                      InkWell(
                        borderRadius: BorderRadius.circular(25),

                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Burger()),
                          );
                        },
                        child: buildCategoryCard(
                          label: "Burger",
                          imageUrl:
                              'https://cdn-icons-png.flaticon.com/128/5787/5787016.png',
                          backgroundColor: Colors.orangeAccent.shade100,
                        ),
                      ),
                      SizedBox(width: 8),
                      InkWell(
                        borderRadius: BorderRadius.circular(25),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Details()),
                          );
                        },
                        child: buildCategoryCard(
                          label: "Pizza",
                          imageUrl:
                              'https://cdn-icons-png.flaticon.com/128/6978/6978255.png',
                          backgroundColor: Colors.redAccent.shade100,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Appwidget.sizeheight(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Open Restaurants",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "See All",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      Icon(Icons.keyboard_arrow_right_outlined),
                    ],
                  ),
                ],
              ),
              Appwidget.sizeheight(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  imageNetwork(
                    imageUrl:
                        'https://images.pexels.com/photos/1640777/pexels-photo-1640777.jpeg?auto=compress&cs=tinysrgb&w=600',
                  ),
                  Appwidget.sizeheight(),
                  Text(
                    "Rose Garden Restaurant",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      letterSpacing: 1,
                      color: Colors.white,
                    ),
                  ),
                  Appwidget.sizeheight(),
                  Text(
                    "Burger - Chicken - Riche - Wings",
                    style: TextStyle(color: Colors.white),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.star_border, color: Colors.deepOrange),
                          SizedBox(width: 4),
                          Text("4.7", style: TextStyle(color: Colors.white)),
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
                          Text("Free", style: TextStyle(color: Colors.white)),
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
                          Text("20 min", style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Appwidget.sizeheight(),
              imageNetwork(
                imageUrl:
                    'https://images.pexels.com/photos/750073/pexels-photo-750073.jpeg?auto=compress&cs=tinysrgb&w=600',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
