import 'package:flutter/material.dart';
import 'package:foodui/pages/editprofile.dart';

class Personalinfo extends StatefulWidget {
  const Personalinfo({super.key});

  @override
  State<Personalinfo> createState() => _PersonalinfoState();
}

class _PersonalinfoState extends State<Personalinfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
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
                Expanded(flex: 6, child: Text("Personal Info")),

                InkWell(
                  onTap: () {},
                  child: Expanded(
                    flex: 0,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Editprofile(),
                          ),
                        );
                      },
                      child: Stack(
                        children: [
                          Text(
                            'EDIT',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.deepOrange,
                              decoration: TextDecoration.none,
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            left: 0,
                            child: Container(
                              height: 1.5,
                              color: Colors.deepOrange,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.pink.shade800,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Image.network(
                      'https://scontent.fktm21-1.fna.fbcdn.net/v/t39.30808-6/487315180_3007083586108364_4876919458221114847_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=a5f93a&_nc_ohc=C5MlmmBH6qQQ7kNvwH0vc9O&_nc_oc=AdmO8mB1TUMv2IjqoKTWH0gbru2ydyL8SSPVfLWs2jUTORyL7cIebaKdkOb77jWjyjg&_nc_zt=23&_nc_ht=scontent.fktm21-1.fna&_nc_gid=Xo6mwhimjCD8AdjQc2KepA&oh=00_AfF9yWehxck-kM3lk5-Mt9o6cp2y-a3EkamOJF99yLp0Cw&oe=680C007F',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,

                  children: [
                    Text(
                      "Nischal Bhattarai",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text("I love fast food"),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 170, 191, 202),
                  borderRadius: BorderRadius.circular(25),
                ),

                child: ListView(
                  shrinkWrap: true,
                  children: [
                    ListTile(
                      leading: Icon(Icons.person, color: Colors.deepOrange),
                      title: Text("FULL NAME"),
                      subtitle: Text("Vishal Khadak"),
                    ),
                    ListTile(
                      leading: Icon(Icons.email, color: Colors.lightBlue),
                      title: Text("EMAIL"),
                      subtitle: Text("hello@halallab.com"),
                    ),
                    ListTile(
                      leading: Icon(Icons.phone, color: Colors.lightBlueAccent),
                      title: Text("PHONE NUMBER"),
                      subtitle: Text("408-841-0926"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
