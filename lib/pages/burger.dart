import 'package:flutter/material.dart';
import 'package:foodui/widgets/app_button.dart';
import 'package:foodui/widgets/app_text_field.dart';

class Burger extends StatefulWidget {
  const Burger({super.key});

  @override
  State<Burger> createState() => _BurgerState();
}

class _BurgerState extends State<Burger> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.orangeAccent.shade400,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Icon(Icons.arrow_back_ios_new),
                        ),
                      ),

                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Icon(Icons.heart_broken, color: Colors.red),
                      ),
                    ],
                  ),
                  Image.network(
                    'https://t3.ftcdn.net/jpg/00/69/85/64/240_F_69856461_O8p56mlDwWo0mXFswcYbGbP7Ihlbimiw.jpg',
                    fit: BoxFit.contain,
                  ),
                ],
              ),
            ),
            Appwidget.sizeheight(),
            Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Burger Bistro", style: Appwidget.boldtext()),
                  Appwidget.sizeheight(),
                  SizedBox(
                    height: 20,
                    width: 120,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.hearing_outlined, color: Colors.red),
                        Text("Rose Garden"),
                      ],
                    ),
                  ),
                  Appwidget.sizeheight(),
                  SizedBox(
                    width: 250,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 50,

                          child: Row(
                            children: [
                              Icon(Icons.star_border, color: Colors.deepOrange),
                              Text("4.7", style: Appwidget.boldtext()),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 50,

                          child: Row(
                            children: [
                              Icon(Icons.star_border, color: Colors.deepOrange),
                              Text("4.7", style: Appwidget.boldtext()),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 75,

                          child: Row(
                            children: [
                              Icon(Icons.av_timer, color: Colors.deepOrange),
                              Text("20 min", style: Appwidget.boldtext()),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "Moecenas sed diam eget risus varius blandit sit\namet non magns. Integer posuere erat a ante\nvanenatis dapibus posuere velit aliquet.",
                  ),
                  Appwidget.sizeheight(),
                  SizedBox(
                    width: 250,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("SIZE:", style: Appwidget.boldtext()),
                        Container(
                          alignment: Alignment.center,
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.blueGrey.shade500,
                          ),
                          child: Text("10''"),
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.orange.shade500,
                          ),
                          child: Text("14''"),
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.blueGrey.shade500,
                          ),
                          child: Text("16''"),
                        ),
                      ],
                    ),
                  ),
                  Appwidget.sizeheight(),
                  Text("INGRIDENTS", style: Appwidget.boldtext()),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.pink.shade100,
                        ),
                        child: Icon(Icons.accessible_forward_outlined),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.pink.shade100,
                        ),
                        child: Icon(Icons.swipe_up_alt),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.pink.shade100,
                        ),
                        child: Icon(Icons.ac_unit_rounded),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.pink.shade100,
                        ),
                        child: Icon(Icons.accessible_forward_outlined),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.pink.shade100,
                        ),
                        child: Icon(Icons.swipe_up_alt),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Appwidget.sizeheight(),
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
                        style: Appwidget.boldTextFeildStyle(),
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
                  Appwidget.sizeheight(),
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
    );
  }

  var count = 1;
  var price = r'$32';
}
