import 'package:flutter/material.dart';
import 'package:foodui/widgets/chief.dart';

class Review extends StatefulWidget {
  const Review({super.key});

  @override
  State<Review> createState() => _ReviewState();
}

class _ReviewState extends State<Review> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Icon(Icons.arrow_back_ios_new_sharp),
                  ),
                  SizedBox(width: 25),
                  Text(
                    "Reviews",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25),
              reviews(
                ppimage:
                    'https://scontent.fktm21-1.fna.fbcdn.net/v/t39.30808-6/487315180_3007083586108364_4876919458221114847_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=a5f93a&_nc_ohc=C5MlmmBH6qQQ7kNvwH0vc9O&_nc_oc=AdmO8mB1TUMv2IjqoKTWH0gbru2ydyL8SSPVfLWs2jUTORyL7cIebaKdkOb77jWjyjg&_nc_zt=23&_nc_ht=scontent.fktm21-1.fna&_nc_gid=Xo6mwhimjCD8AdjQc2KepA&oh=00_AfF9yWehxck-kM3lk5-Mt9o6cp2y-a3EkamOJF99yLp0Cw&oe=680C007F',
                date: '20/12/2020',
                dots: (Icons.data_object_sharp),
                star: (Icons.star),
                subtitle:
                    "this food so tastyand delicious. Breakfast so fast delivered inmy place",
                title: "Great Food and Services",
              ),

              SizedBox(height: 10),
              reviews(
                ppimage:
                    'https://scontent.fktm21-1.fna.fbcdn.net/v/t39.30808-6/487315180_3007083586108364_4876919458221114847_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=a5f93a&_nc_ohc=C5MlmmBH6qQQ7kNvwH0vc9O&_nc_oc=AdmO8mB1TUMv2IjqoKTWH0gbru2ydyL8SSPVfLWs2jUTORyL7cIebaKdkOb77jWjyjg&_nc_zt=23&_nc_ht=scontent.fktm21-1.fna&_nc_gid=Xo6mwhimjCD8AdjQc2KepA&oh=00_AfF9yWehxck-kM3lk5-Mt9o6cp2y-a3EkamOJF99yLp0Cw&oe=680C007F',
                date: '20/12/2020',
                dots: (Icons.data_object_sharp),
                star: (Icons.star),
                subtitle:
                    "this food so tastyand delicious. Breakfast so fast delivered inmy place",
                title: "Great Food and Services",
              ),
              SizedBox(height: 10),

              reviews(
                ppimage:
                    'https://scontent.fktm21-1.fna.fbcdn.net/v/t39.30808-6/487315180_3007083586108364_4876919458221114847_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=a5f93a&_nc_ohc=C5MlmmBH6qQQ7kNvwH0vc9O&_nc_oc=AdmO8mB1TUMv2IjqoKTWH0gbru2ydyL8SSPVfLWs2jUTORyL7cIebaKdkOb77jWjyjg&_nc_zt=23&_nc_ht=scontent.fktm21-1.fna&_nc_gid=Xo6mwhimjCD8AdjQc2KepA&oh=00_AfF9yWehxck-kM3lk5-Mt9o6cp2y-a3EkamOJF99yLp0Cw&oe=680C007F',
                date: '20/12/2020',
                dots: (Icons.data_object_sharp),
                star: (Icons.star),
                subtitle:
                    "this food so tastyand delicious. Breakfast so fast delivered inmy place",
                title: "Great Food and Services",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
