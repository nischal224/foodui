import 'package:flutter/material.dart';

class Additems extends StatefulWidget {
  const Additems({super.key});

  @override
  State<Additems> createState() => _AdditemsState();
}

class _AdditemsState extends State<Additems> {
  bool isChecked = false;

  Widget uploadPhotoVideo() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start, // Align items to start
        children: [
          // Image Container
          Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              border: Border.all(width: 2, color: Colors.black),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                'https://images.pexels.com/photos/1633525/pexels-photo-1633525.jpeg?auto=compress&cs=tinysrgb&w=300',
                fit: BoxFit.cover, // Ensure image covers the container space
                height: double.infinity, // Use full container height
                width: double.infinity, // Use full container width
              ),
            ),
          ),
          SizedBox(width: 10),
          Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              border: Border.all(color: Colors.black, width: 2),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Icon(Icons.cloud_upload_outlined),
                ),
                SizedBox(height: 5),
                Text("Add"),
              ],
            ),
          ),
          SizedBox(width: 10),
          Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              border: Border.all(color: Colors.black, width: 2),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Icon(Icons.cloud_upload_outlined),
                ),
                SizedBox(height: 5),
                Text("Add"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: Colors.blueGrey.shade500,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Icon(Icons.arrow_back_ios_new_rounded),
        ),
        title: Text("Add New Items"),
        actions: [
          Text("RESET", style: TextStyle(color: Colors.deepOrangeAccent)),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 25),
              Text("ITEM NAME", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(25),
                  hintText: 'Mazalichicken Halim',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                "UPLOAD PHOTO/VIDEO",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 15),
              uploadPhotoVideo(),
              SizedBox(height: 25),
              Text("PRICE"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Price TextField
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "\$50",
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  SizedBox(width: 10),
                  Row(
                    children: [
                      Checkbox(
                        value: isChecked,
                        onChanged: (bool? newValue) {
                          setState(() {
                            isChecked = newValue!;
                          });
                        },
                      ),
                      Text("pick up"),
                    ],
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Row(
                      children: [
                        Checkbox(
                          value: isChecked,
                          onChanged: (bool? newValue) {
                            setState(() {
                              isChecked = newValue!;
                            });
                          },

                          side: BorderSide(color: Colors.deepOrange),
                          checkColor: Colors.deepOrange,
                        ),
                        Text('Delivery'),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Text("INGRIDENTS"),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Basic"),
                  Row(
                    children: [
                      Text("See All"),
                      Icon(Icons.arrow_drop_down_rounded),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.orangeAccent,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Icon(Icons.satellite_alt_sharp),
                      ),
                      Text("Avocado"),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.orangeAccent,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Icon(Icons.satellite_alt_sharp),
                      ),
                      Text("apple"),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.orangeAccent,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Icon(Icons.satellite_alt_sharp),
                      ),
                      Text("blueberry"),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.orangeAccent,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Icon(Icons.satellite_alt_sharp),
                      ),
                      Text("broccoli"),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.orangeAccent,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Icon(Icons.satellite_alt_sharp),
                      ),
                      Text("orange"),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.orangeAccent,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Icon(Icons.satellite_alt_sharp),
                      ),
                      Text("walnut"),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 25),
              Container(
                alignment: Alignment.center,
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Text(
                  "SAVE CHANGES",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
