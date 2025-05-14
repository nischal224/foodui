import 'package:flutter/material.dart';
import 'package:foodui/pages/details.dart';
import 'package:foodui/widgets/app_button.dart';
import 'package:foodui/widgets/app_text_field.dart';

class Homepagesec extends StatefulWidget {
  const Homepagesec({super.key});

  @override
  State<Homepagesec> createState() => _HomepagesecState();
}

class _HomepagesecState extends State<Homepagesec> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  Expanded(
                    flex: 0,
                    child: Container(
                      height: 50,
                      width: 50,

                      decoration: BoxDecoration(
                        color: Colors.blueGrey.shade200,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Icon(Icons.align_horizontal_left),
                    ),
                  ),
                  SizedBox(width: 25),
                  Expanded(
                    flex: 7,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'DELIVER TO',
                          style: TextStyle(
                            color: Colors.orange.shade900,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            Text('Halal Lab Office'),
                            Icon(Icons.keyboard_arrow_down),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 0,

                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Icon(Icons.shopping_bag, color: Colors.white),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(text: "Hey Halal,  "),
                    TextSpan(
                      text: "Good Afternoon",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.blueGrey.shade100,
                  hintText: 'Search dishes, resturants',
                  prefixIcon: Icon(Icons.search, color: Colors.black38),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "ALL Categories",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Row(
                    children: [
                      Text(
                        "See All",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Icon(Icons.keyboard_arrow_right_outlined),
                    ],
                  ),
                ],
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Details(),
                              ),
                            );
                          },
                          child: buildPizza(
                            title: "Pizza",
                            subtitle: "Starting",
                            price: '\$70',
                            imageUrl:
                                'https://t3.ftcdn.net/jpg/03/07/65/18/240_F_307651812_yiydVwvUeeZlTCuUs4E2aqsUMUlwIo86.jpg',
                          ),
                        ),
                        SizedBox(width: 8),
                        buildPizza(
                          title: "Burger",
                          subtitle: "Starting",
                          price: '\$70',
                          imageUrl:
                              'https://t4.ftcdn.net/jpg/01/69/56/95/240_F_169569546_zaLG8x4tyIu3SDn1jYWXThVpMjCEbn8Q.jpg',
                        ),
                        SizedBox(width: 8),
                        buildPizza(
                          title: "Pineapple",
                          subtitle: "Starting",
                          price: '\$70',
                          imageUrl:
                              'https://t3.ftcdn.net/jpg/00/50/55/88/240_F_50558878_jgqtl3flPfK98Gcdto0R2vtcscCuCuUl.jpg',
                        ),
                        SizedBox(width: 8),
                        buildPizza(
                          title: "Hot Dog",
                          subtitle: "Starting",
                          price: '\$70',
                          imageUrl:
                              'https://t4.ftcdn.net/jpg/11/77/37/19/240_F_1177371976_EjlMdQPeMdynivXataCUMplXhVRsjxHy.jpg',
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Open Restaurants",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Row(
                    children: [
                      Text(
                        "See All",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Icon(Icons.keyboard_arrow_right_outlined),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                    fit: BoxFit.cover,
                    'https://images.pexels.com/photos/1640777/pexels-photo-1640777.jpeg?auto=compress&cs=tinysrgb&w=600',
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Rose Garden Restaurant",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      letterSpacing: 1,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Burger - Chicken - Riche - Wings",
                    style: TextStyle(color: Colors.black54),
                  ),
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
                ],
              ),
              SizedBox(height: 25),
              Image.network(
                'https://images.pexels.com/photos/750073/pexels-photo-750073.jpeg?auto=compress&cs=tinysrgb&w=600',

                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
