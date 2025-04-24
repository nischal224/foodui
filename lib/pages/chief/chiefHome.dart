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
          ) ,
        ],
        currentIndex: 0,
        onTap: (value) {},
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.red,
      ),
      body: Column( 
        children: [
          Row(children: [Container(child: Icon(Icons.ac_unit_sharp))]),
        ],
      ),
    );
  }
}
