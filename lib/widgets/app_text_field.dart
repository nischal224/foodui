import 'package:flutter/material.dart';

class Appwidget {
  static BuildContext? get context => null;

  static TextStyle boldTextFeildStyle() {
    return TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 35,
    );
  }

  static TextStyle titleText() {
    return TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w600,
      fontSize: 20,
    );
  }

  static Container buttomVerification() {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.deepOrange,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Text(
        "VERIFY",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
          fontSize: 18,
        ),
      ),
    );
  }

  static Container loginButton() {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.deepOrange,
        borderRadius: BorderRadius.circular(25),
      ),
      child: const Text(
        "LOG IN",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
    );
  }

  static Container signupBotton() {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.deepOrange,
        borderRadius: BorderRadius.circular(25),
      ),
      child: const Text(
        "LOG IN",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
    );
  }

  static Container buttonaccess() {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.deepOrange,
        borderRadius: BorderRadius.circular(25),
      ),
      child: const Text(
        "ACCESS LOCATION",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
    );
  }

  static TextStyle boldtext() {
    return TextStyle(fontWeight: FontWeight.bold);
  }
}

Widget buildCategoryCard({
  required String label,
  required String imageUrl,
  required Color backgroundColor,
}) {
  return Material(
    elevation: 8.0,
    borderRadius: BorderRadius.circular(25),

    child: Wrap(
      alignment: WrapAlignment.spaceAround,
      children: [
        Container(
          padding: EdgeInsets.only(left: 2, right: 9),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  color: backgroundColor,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Image.network(imageUrl, scale: 4),
              ),

              Text(label, style: Appwidget.boldtext()),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget buildPizza({
  required String title,
  required String subtitle,
  required String price,
  required String imageUrl,
}) {
  return Container(
    width: 120,
    padding: EdgeInsets.all(12),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
      boxShadow: [
        BoxShadow(color: Colors.black12, blurRadius: 8, offset: Offset(0, 4)),
      ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(25),

          child: Image.network(
            imageUrl,
            width: 80,
            height: 80,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 10),

        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),

        SizedBox(height: 4),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(subtitle, style: TextStyle(color: Colors.grey, fontSize: 13)),

            Text(
              price,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget thirdpage({required String title, required String imageUrl}) {
  return Column(
    children: [
      Container(
        width: 100,
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 8,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Image.network(imageUrl, fit: BoxFit.cover),
      ),
      Text(title, style: Appwidget.boldtext()),
    ],
  );
}

Widget saveContainer({
  required String name,
  required Color backgroundColor,
  required Color textColor,
}) {
  return Container(
    alignment: Alignment.center,
    height: 80,
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: backgroundColor,
    ),
    child: Text(name, style: TextStyle(color: textColor)),
  );
}

Widget imageNetwork({required String imageUrl, Color? color}) {
  return Image.network(imageUrl, fit: BoxFit.cover);
}

Widget pizza({
  required String image,
  required String title,
  required String price,
  required String comment,
  required String value,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10),
    child: Row(
      children: [
        Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(
            color: Colors.blueGrey.shade500,
            borderRadius: BorderRadius.circular(12),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(image, fit: BoxFit.cover),
          ),
        ),

        const SizedBox(width: 20),

        // Details Section
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                price,
                style: const TextStyle(color: Colors.white, fontSize: 16),
              ),

              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      comment,
                      style: const TextStyle(color: Colors.blueGrey),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _circleButton(Icons.remove),
                        Text(
                          value,
                          style: const TextStyle(color: Colors.white),
                        ),
                        _circleButton(Icons.add),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget _circleButton(IconData icon) {
  return Container(
    height: 30,
    width: 30,
    decoration: BoxDecoration(color: Colors.blueGrey, shape: BoxShape.circle),
    child: Icon(icon, color: Colors.white, size: 20),
  );
}

Widget deliveryAddress() {
  return Container(
    padding: EdgeInsets.all(15),
    width: double.infinity,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(25),
        topRight: Radius.circular(25),
      ),
    ),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('DELIVERY ADDRESS', style: TextStyle(color: Colors.blueGrey)),
            Text(
              "EDIT",
              style: TextStyle(
                color: Colors.deepOrange,
                decoration: TextDecoration.underline,
                decorationThickness: 1.5,
                decorationColor: Colors.deepOrange,
              ),
            ),
          ],
        ),
        SizedBox(height: 20),

        TextField(
          decoration: InputDecoration(
            hintText: "2118 Thornridge cir. Syracuse",
            filled: true,
            fillColor: Colors.blueGrey,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide.none,
            ),
          ),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("TOTAL:"),
                SizedBox(width: 15),
                Text(
                  "\$96",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Breakdown:", style: TextStyle(color: Colors.orange)),
                Icon(Icons.chevron_right_rounded),
              ],
            ),
          ],
        ),
        SizedBox(height: 25),
        Container(
          alignment: Alignment.center,
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.deepOrange,
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Text(
            "PLACE ORDER",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
      ],
    ),
  );
}
