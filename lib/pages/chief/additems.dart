import 'package:flutter/material.dart';
import 'package:foodui/widgets/app_button.dart';

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
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
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
                fit: BoxFit.cover,
                height: double.infinity,
                width: double.infinity,
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
              Appwidget.sizeheight(),
              Text("ITEM NAME", style: Appwidget.headerBold()),
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
              Appwidget.sizeheight(),
              Text("UPLOAD PHOTO/VIDEO", style: Appwidget.headerBold()),
              Appwidget.sizeheight(),
              uploadPhotoVideo(),
              Appwidget.sizeheight(),
              Text("PRICE", style: Appwidget.headerBold()),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
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
                      Text("pick up", style: Appwidget.subheader()),
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
                        Text('Delivery', style: Appwidget.subheader()),
                      ],
                    ),
                  ),
                ],
              ),
              Appwidget.sizeheight(),
              Text("INGRIDENTS", style: Appwidget.headerBold()),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Basic", style: Appwidget.subheader()),
                  Row(
                    children: [
                      Text("See All", style: Appwidget.subheader()),
                      Icon(Icons.arrow_drop_down_rounded),
                    ],
                  ),
                ],
              ),
              Appwidget.sizeheight(),
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
              Appwidget.sizeheight(),
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
