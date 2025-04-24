import 'package:flutter/material.dart';
import 'package:foodui/pages/login.dart';
import 'package:foodui/widgets/app_text_field.dart';

class Verification extends StatefulWidget {
  const Verification({super.key});

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 3,
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.black),
            child: Row(
              children: [
                InkWell(
                  borderRadius: BorderRadius.circular(50),
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Expanded(
                    flex: 1,
                    child: Container(
                      width: 50,
                      height: 50,

                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Icon(Icons.arrow_back_ios_new_outlined),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Verification\n",
                              style: Appwidget.boldTextFeildStyle(),
                            ),
                            TextSpan(
                              text: "We have Sent a code to your email\n",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w100,
                                fontSize: 20,
                              ),
                            ),

                            TextSpan(
                              text: "example@gmail.com",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
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

          Container(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
            height: MediaQuery.of(context).size.height / 1.5,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.elliptical(50, 25),
                topRight: Radius.elliptical(50, 25),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("CODE"),
                    RichText(
                      text: TextSpan(
                        children: [
                          WidgetSpan(
                            alignment: PlaceholderAlignment.baseline,
                            baseline: TextBaseline.alphabetic,
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Text(
                                  "Resend",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    color: Colors.black,
                                  ),
                                ),
                                Positioned(
                                  bottom:
                                      0.5, // Adjust this to control underline height
                                  left: 0,
                                  right: 0,
                                  child: Container(
                                    height: 2, // Thickness of underline
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          TextSpan(
                            text: " in.50sec",
                            style: TextStyle(
                              fontWeight: FontWeight.w200,
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey.shade100,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(child: Text("2")),
                      ),
                    ),
                    SizedBox(width: 5),
                    Expanded(
                      flex: 1,

                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey.shade100,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(child: Text("0")),
                      ),
                    ),
                    SizedBox(width: 5),

                    Expanded(
                      flex: 1,

                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey.shade100,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(child: Text("1")),
                      ),
                    ),
                    SizedBox(width: 5),

                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey.shade100,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(child: Text("5")),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 50),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                    );
                  },
                  child: Appwidget.buttomVerification(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  bool ischecked = false;
}
