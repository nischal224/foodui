import 'package:flutter/material.dart';
import 'package:foodui/widgets/app_text_field.dart';

class Editprofile extends StatefulWidget {
  const Editprofile({super.key});

  @override
  State<Editprofile> createState() => _EditprofileState();
}

class _EditprofileState extends State<Editprofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
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
                    child: Expanded(
                      flex: 0,
                      child: Container(
                        height: 50,
                        width: 50,

                        decoration: BoxDecoration(
                          color: Colors.blueGrey.shade400,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Icon(Icons.arrow_back_ios_new),
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  Expanded(flex: 6, child: Text("Edit Profile")),
                ],
              ),
              Center(
                child: Stack(
                  children: [
                    Positioned(
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: ClipRRect(
                          clipBehavior: Clip.hardEdge,
                          borderRadius: BorderRadius.circular(50),
                          child: Image.network(
                            'https://scontent.fktm21-1.fna.fbcdn.net/v/t39.30808-6/487315180_3007083586108364_4876919458221114847_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=a5f93a&_nc_ohc=C5MlmmBH6qQQ7kNvwH0vc9O&_nc_oc=AdmO8mB1TUMv2IjqoKTWH0gbru2ydyL8SSPVfLWs2jUTORyL7cIebaKdkOb77jWjyjg&_nc_zt=23&_nc_ht=scontent.fktm21-1.fna&_nc_gid=Xo6mwhimjCD8AdjQc2KepA&oh=00_AfF9yWehxck-kM3lk5-Mt9o6cp2y-a3EkamOJF99yLp0Cw&oe=680C007F',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: Colors.deepOrange.shade300,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Icon(Icons.edit, size: 18, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("FULL NAME"),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Nischal Bhattarai",
                      filled: true,
                      fillColor: Colors.blueGrey,
                      contentPadding: EdgeInsets.all(25),

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 25),
                  Text("EMAIL"),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "hello@halallab.com",
                      filled: true,
                      fillColor: Colors.blueGrey,
                      contentPadding: EdgeInsets.all(25),

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 25),
                  Text("PHONE NUMBER"),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "408-841-0926",
                      filled: true,
                      contentPadding: EdgeInsets.all(25),
                      fillColor: Colors.blueGrey,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 25),
                  Text("BIO"),
                  TextFormField(
                    maxLines: 4,
                    decoration: InputDecoration(
                      hintText: "I Love fast food",
                      filled: true,
                      fillColor: Colors.blueGrey,
                      contentPadding: EdgeInsets.only(top: 55, left: 25),

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    textAlignVertical: TextAlignVertical.top,
                  ),
                ],
              ),
              SizedBox(height: 25),
              saveContainer(
                name: "SAVE",
                backgroundColor: Colors.deepOrange,
                textColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
