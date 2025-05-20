import 'package:flutter/material.dart';
import 'package:foodui/widgets/app_button.dart';

class Myprofile extends StatefulWidget {
  const Myprofile({super.key});

  @override
  State<Myprofile> createState() => _MyprofileState();
}

class _MyprofileState extends State<Myprofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(25),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.deepOrange.shade700,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Icon(Icons.arrow_back_ios_sharp),
                      ),
                      SizedBox(width: 15),
                      Text(
                        "My Profile",
                        style: TextStyle(color: Colors.white70, fontSize: 18),
                      ),
                    ],
                  ),
                  Text(
                    "Available Balance",
                    style: TextStyle(color: Colors.white70, fontSize: 25),
                  ),
                  Text(
                    "\$500.00",
                    style: TextStyle(fontSize: 50, color: Colors.white),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Colors.white,
                        width: 1,
                        style: BorderStyle.solid,
                      ),
                    ),
                    child: Text(
                      "withdraw",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            Appwidget.sizeheight(),

            Padding(
              padding: const EdgeInsets.all(15.0),
              child: ListView(
                shrinkWrap: true,
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          title: Text("Personal Info"),
                          leading: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.white60,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Icon(
                              Icons.person_2_outlined,
                              color: Colors.deepOrangeAccent,
                            ),
                          ),
                          trailing: Icon(Icons.arrow_forward_ios_sharp),
                        ),
                        Appwidget.sizeheight(),

                        ListTile(
                          title: Text("Settings"),
                          leading: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.white60,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Icon(
                              Icons.settings,
                              color: Colors.blue.shade900,
                            ),
                          ),
                          trailing: Icon(Icons.arrow_forward_ios_sharp),
                        ),
                      ],
                    ),
                  ),
                  Appwidget.sizeheight(),

                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          title: Text("Withdrawal History"),
                          leading: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.white60,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Icon(
                              Icons.wallet_sharp,
                              color: Colors.deepOrangeAccent,
                            ),
                          ),
                          trailing: Icon(Icons.arrow_forward_ios_sharp),
                        ),
                        Appwidget.sizeheight(),

                        ListTile(
                          title: Text("Number of Orders"),
                          leading: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.white60,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Icon(
                              Icons.open_in_new_rounded,
                              color: Colors.blue.shade900,
                            ),
                          ),
                          trailing: Text(
                            "29k",
                            style: TextStyle(
                              color: Colors.grey.shade800,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Appwidget.sizeheight(),

                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          title: Text("User Reviews"),
                          leading: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.white60,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Icon(
                              Icons.supervised_user_circle_sharp,
                              color: Colors.deepOrangeAccent,
                            ),
                          ),
                          trailing: Icon(Icons.arrow_forward_ios_sharp),
                        ),
                      ],
                    ),
                  ),
                  Appwidget.sizeheight(),

                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          title: Text("Log Out"),
                          leading: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.white60,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Icon(
                              Icons.logout_sharp,
                              color: Colors.deepOrangeAccent,
                            ),
                          ),
                          trailing: Icon(Icons.arrow_forward_ios_sharp),
                        ),
                      ],
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
}
