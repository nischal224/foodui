import 'package:flutter/material.dart';

class Chiefhome extends StatefulWidget {
  const Chiefhome({super.key});

  @override
  State<Chiefhome> createState() => _ChiefhomeState();
}

class _ChiefhomeState extends State<Chiefhome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.import_contacts),
            label: 'contacts',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.error), label: 'error'),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'shoppng',
          ),
        ],
        currentIndex: 0,
        onTap: (value) {},
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.red,
      ),
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
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Icon(Icons.ac_unit_sharp),
                  ),
                  SizedBox(width: 15),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Location"),
                        Container(
                          width: 150,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Halal Lab office"),
                              Icon(Icons.arrow_drop_down),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.network(
                      'https://scontent.fktm21-1.fna.fbcdn.net/v/t39.30808-6/487315180_3007083586108364_4876919458221114847_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=a5f93a&_nc_ohc=C5MlmmBH6qQQ7kNvwH0vc9O&_nc_oc=AdmO8mB1TUMv2IjqoKTWH0gbru2ydyL8SSPVfLWs2jUTORyL7cIebaKdkOb77jWjyjg&_nc_zt=23&_nc_ht=scontent.fktm21-1.fna&_nc_gid=Xo6mwhimjCD8AdjQc2KepA&oh=00_AfF9yWehxck-kM3lk5-Mt9o6cp2y-a3EkamOJF99yLp0Cw&oe=680C007F',
                      fit: BoxFit.cover,
                      height: 70,
                      width: 70,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.amberAccent,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "20",
                            style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text("RUNNING ORDERS"),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.amberAccent,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "05",
                            style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text("ORDER REQUEST"),
                        ],
                      ),
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
