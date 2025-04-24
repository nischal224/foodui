import 'package:flutter/material.dart';
import 'package:foodui/widgets/app_text_field.dart';


class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
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
                            color: Colors.blueGrey.shade600,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Icon(
                            Icons.arrow_back_ios_new_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(width: 25),
                      Expanded(
                        child: Text(
                          "Cart",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ),
                      Text(
                        "EDIT ITEMS",
                        style: TextStyle(
                          color: Colors.deepOrange,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.deepOrangeAccent,
                          decorationStyle: TextDecorationStyle.solid,
                          decorationThickness: 1.5,
                        ),
                      ),
                    ],
                  ),
                  pizza(
                    image:
                        'https://images.pexels.com/photos/1640777/pexels-photo-1640777.jpeg?auto=compress&cs=tinysrgb&w=600',
                    title: 'Pizza Calzone\nEuropean',
                    price: '\$64',
                    comment: "14''",
                    value: '2',
                  ),
                  SizedBox(height: 20),
                  pizza(
                    image:
                        'https://images.pexels.com/photos/1640777/pexels-photo-1640777.jpeg?auto=compress&cs=tinysrgb&w=600',
                    title: 'Pizza Calzone\nEuropean',
                    price: '\$32',
                    comment: "14''",
                    value: '1',
                  ),
                ],
              ),
            ),
            Column(children: [deliveryAddress()]),
          ],
        ),
      ),
    );
  }
}
