import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class Searchpage extends StatefulWidget {
  const Searchpage({super.key});

  @override
  State<Searchpage> createState() => _SearchpageState();
}

class _SearchpageState extends State<Searchpage> {
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
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(236, 240, 244, 1.0),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Icon(Icons.arrow_back_ios_new_outlined),
                  ),
                  SizedBox(width: 15),
                  Expanded(child: Text("Search")),
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(24, 28, 46, 1.0),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Icon(
                          Icons.shopping_bag_outlined,
                          color: Colors.white,
                        ),
                      ),
                      Positioned(
                        top: -5,
                        right: 0,
                        child: Container(
                          alignment: Alignment.center,
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 118, 34, 1.0),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Text(
                            "2",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 25),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Color.fromRGBO(202, 205, 216, 1.0),
                  ),
                  suffixIcon: Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(205, 205, 207, 1.0),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Icon(
                      LucideIcons.x,
                      color: Color.fromRGBO(253, 253, 253, 1.0),
                      size: 20,
                    ),
                  ),
                  hintText: 'Pizza',
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  filled: true,
                  // fillColor: Color.fromRGBO(246, 246, 246, 1.0),
                  fillColor: Color.fromRGBO(236, 240, 244, 1.0),
                ),
              ),

              SizedBox(height: 15),

              Text(
                'Recent Keywords',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      top: 10,
                      bottom: 10,
                      right: 20,
                      left: 20,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Color.fromRGBO(31, 31, 29, 1),
                        width: 1,
                      ),
                    ),
                    child: Text('Burger'),
                  ),
                  SizedBox(width: 7),

                  Container(
                    padding: EdgeInsets.only(
                      top: 10,
                      bottom: 10,
                      right: 20,
                      left: 20,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Color.fromRGBO(31, 31, 29, 1),
                        width: 1,
                      ),
                    ),
                    child: Text('Sandwich'),
                  ),
                  SizedBox(width: 7),

                  Container(
                    padding: EdgeInsets.only(
                      top: 10,
                      bottom: 10,
                      right: 20,
                      left: 20,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Color.fromRGBO(31, 31, 29, 1),
                        width: 1,
                      ),
                    ),
                    child: Text('Burger'),
                  ),
                  SizedBox(width: 7),
                  Container(
                    padding: EdgeInsets.only(
                      top: 10,
                      bottom: 10,
                      right: 20,
                      left: 20,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Color.fromRGBO(31, 31, 29, 1),
                        width: 1,
                      ),
                    ),
                    child: Text('Burger'),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Text(
                'Suggested Restaurants',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Image.network(
                    'https://images.pexels.com/photos/1222271/pexels-photo-1222271.jpeg?auto=compress&cs=tinysrgb&w=600',
                    height: 80,
                    width: 80,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Pansi Restaurant"),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.deepOrange),
                          Text("4.7"),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Divider(height: 50),

              Row(
                children: [
                  Image.network(
                    'https://images.pexels.com/photos/1222271/pexels-photo-1222271.jpeg?auto=compress&cs=tinysrgb&w=600',
                    height: 80,
                    width: 80,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Pansi Restaurant"),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.deepOrange),
                          Text("4.7"),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Divider(height: 50),

              Row(
                children: [
                  Image.network(
                    'https://images.pexels.com/photos/1222271/pexels-photo-1222271.jpeg?auto=compress&cs=tinysrgb&w=600',
                    height: 80,
                    width: 80,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Pansi Restaurant"),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.deepOrange),
                          Text("4.7"),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Divider(height: 50),

              Text("Popular Fast Food", style: TextStyle(fontSize: 18)),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 100,
                    child: Column(
                      children: [
                        Image.network(
                          'https://images.pexels.com/photos/1222271/pexels-photo-1222271.jpeg?auto=compress&cs=tinysrgb&w=600',
                          height: 50,
                          width: 50,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
