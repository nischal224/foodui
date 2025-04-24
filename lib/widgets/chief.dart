import 'package:flutter/material.dart';

Widget reviews({
  required String date,
  required String title,
  required IconData star,
  required String subtitle,
  required IconData dots,
  required String ppimage,
}) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Image.network(
            ppimage,
            height: 50,
            width: 50,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(width: 10),

        Expanded(
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.blueGrey.shade200,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text(date), Icon(dots)],
                ),
                SizedBox(height: 10),

                Text(title, style: TextStyle(fontWeight: FontWeight.bold)),

                Row(
                  children: List.generate(
                    5,
                    (index) => Icon(star, color: Colors.deepOrange, size: 18),
                  ),
                ),

                Text(subtitle),
              ],
            ),
          ),

        ),
        Container(
          
        )
      ],
    ),
  );
}
