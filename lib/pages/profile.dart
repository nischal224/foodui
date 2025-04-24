import 'package:flutter/material.dart';
import 'package:foodui/pages/cart.dart';
import 'package:foodui/pages/login.dart';
import 'package:foodui/pages/personalInfo.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.transparent),
            margin: EdgeInsets.zero,
            padding: EdgeInsets.zero,
            child: Padding(
              padding: EdgeInsets.all(16),
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
                            color: Colors.blueGrey.shade400,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Icon(Icons.arrow_back_ios_new, size: 18),
                        ),
                      ),
                      SizedBox(width: 15),
                      Expanded(
                        child: Text(
                          "Profile",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey.shade400,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Icon(Icons.do_not_touch, size: 18),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(35),
                          child: Image.network(
                            'https://scontent.fktm21-1.fna.fbcdn.net/v/t39.30808-6/487315180_3007083586108364_4876919458221114847_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=a5f93a&_nc_ohc=C5MlmmBH6qQQ7kNvwH0vc9O&_nc_oc=AdmO8mB1TUMv2IjqoKTWH0gbru2ydyL8SSPVfLWs2jUTORyL7cIebaKdkOb77jWjyjg&_nc_zt=23&_nc_ht=scontent.fktm21-1.fna&_nc_gid=Xo6mwhimjCD8AdjQc2KepA&oh=00_AfF9yWehxck-kM3lk5-Mt9o6cp2y-a3EkamOJF99yLp0Cw&oe=680C007F',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Nischal Bhattarai",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text("I love fast food"),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          Container(
            color: Colors.blueGrey.shade300,

            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Personalinfo()),
                    );
                  },
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text("Personal Info"),
                    trailing: Icon(Icons.arrow_right_sharp),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Personalinfo()),
                      );
                    },
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.location_city),
                  title: Text("Addresses"),
                  trailing: Icon(Icons.arrow_right_sharp),

                  onTap: () {},
                ),
              ],
            ),
          ),

          Container(
            color: Colors.blueGrey.shade300,

            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.shopping_cart),
                  title: Text("Cart"),
                  trailing: Icon(Icons.arrow_right_sharp),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Cart()),
                    );
                  },
                ),
                ListTile(
                  leading: Icon(Icons.favorite_outline_outlined),
                  title: Text("Favroutie"),
                  trailing: Icon(Icons.arrow_right_sharp),

                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.notification_add_rounded),
                  title: Text("Notifications"),
                  trailing: Icon(Icons.arrow_right_sharp),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.payment),
                  title: Text("Payment Method"),
                  trailing: Icon(Icons.arrow_right_sharp),

                  onTap: () {},
                ),
              ],
            ),
          ),

          Container(
            color: Colors.blueGrey.shade300,
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.format_quote),
                  title: Text("FAQs"),
                  trailing: Icon(Icons.arrow_right_sharp),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.verified_user_rounded),
                  title: Text("User Reviews"),
                  trailing: Icon(Icons.arrow_right_sharp),

                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text("Settings"),
                  trailing: Icon(Icons.arrow_right_sharp),

                  onTap: () {},
                ),
              ],
            ),
          ),

          InkWell(
            onTap: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const Login()),
                (route) => false,
              );
            },
            child: Container(
              color: Colors.black,
              child: ListTile(
                leading: Icon(Icons.logout, color: Colors.white),
                title: Text("Log Out", style: TextStyle(color: Colors.white)),
                trailing: Icon(Icons.arrow_forward_sharp, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
