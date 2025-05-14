import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:foodui/widgets/app_button.dart';

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
        Appwidget.sizeheight(),

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

Widget barChart() {
  return LineChart(
    LineChartData(
      backgroundColor: Colors.white,
      minX: 0,
      maxX: 7,
      minY: 0,
      maxY: 1000,
      titlesData: LineTitles.getTitleData(),
      gridData: FlGridData(show: true),
      borderData: FlBorderData(show: true),
      lineBarsData: [
        LineChartBarData(
          spots: [
            FlSpot(0, 500),
            FlSpot(2.6, 600),
            FlSpot(4.9, 700),
            FlSpot(6.8, 800),
          ],
          isCurved: true,
          barWidth: 5,
          dotData: FlDotData(show: false),
          gradient: LinearGradient(
            colors: [Colors.red, Colors.white],
            begin: Alignment.bottomRight,
            end: Alignment.bottomLeft,
          ),
          belowBarData: BarAreaData(
            show: true,
            color: Colors.red.withAlpha(150),
          ),
        ),
      ],
    ),
  );
}

class LineTitles {
  static FlTitlesData getTitleData() {
    return FlTitlesData(
      bottomTitles: AxisTitles(
        sideTitles: SideTitles(
          showTitles: true,
          interval: 1,
          getTitlesWidget: (value, meta) {
            const timeLabels = {
              0: '10 AM',
              1: '11 AM',
              2: '12 PM',
              3: '1 PM',
              4: '2 PM',
              5: '3 PM',
              6: '4 PM',
            };

            return Padding(
              padding: EdgeInsets.only(top: 8),
              child: Text(
                timeLabels[value.toInt()] ?? '',
                style: TextStyle(fontSize: 10),
              ),
            );
          },
        ),
      ),
      leftTitles: AxisTitles(
        sideTitles: SideTitles(
          showTitles: false,
          interval: 1,
          reservedSize: 40,
          getTitlesWidget: (value, meta) {
            const timeLabels = {1: '500', 2: '600', 3: '750', 4: '700'};

            return Text(
              timeLabels[value.toInt()] ?? '',
              style: TextStyle(fontSize: 10),
            );
          },
        ),
      ),

      topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
      rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
    );
  }
}

Widget notification({
  required String ppimage,
  required String boldtext,
  required String subtext,
  required String time,
  required String imageurl,
}) {
  return ListView(
    shrinkWrap: true,
    children: [
      ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Image.network(
            ppimage,
            fit: BoxFit.cover,
            height: 50,
            width: 50,
          ),
        ),
        title: RichText(
          text: TextSpan(
            text: boldtext,
            style: TextStyle(fontWeight: FontWeight.bold),
            children: [
              TextSpan(
                text: subtext,
                style: TextStyle(color: Colors.blueGrey.shade400),
              ),
            ],
          ),
        ),
        subtitle: Text(time),
        trailing: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.network(imageurl),
        ),
      ),
    ],
  );
}

Widget message({
  required String profile,
  required String titleText,
  required String subtitle,
  required String time,
  required String num,
}) {
  return ListView(
    shrinkWrap: true,

    children: [
      ListTile(
        leading: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.network(
                profile,
                fit: BoxFit.cover,
                height: 50,
                width: 50,
              ),
            ),
            Positioned(
              right: 5,
              bottom: 0,
              child: Container(
                height: 12,
                width: 12,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
          ],
        ),
        title: Text(
          titleText,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        trailing: Column(
          children: [
            Text(
              time,
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
            Container(
              alignment: Alignment.center,
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                color: Colors.deepOrangeAccent,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Text(
                num,
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
          ],
        ),
      ),
    ],
  );
}

Widget ongoing({
  required String name,
  required String? status,
  required String photo,
  required String title,
  required String orderNo,
  required String price,
  required String? dateTime,
  required String numItems,
  required String rate,
  required String reorder,
}) {
  return ListView(
    scrollDirection: Axis.vertical,
    shrinkWrap: true,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(name, style: Appwidget.boldtext()),
              SizedBox(width: 15),
              Text(
                status!,
                textAlign: TextAlign.end,
                style: TextStyle(
                  color: Colors.green.shade800,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          Divider(height: 20, thickness: 1),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  photo,
                  height: 100,
                  width: 80,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            title,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Text(
                          orderNo,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    Appwidget.sizeheight(),
                    Row(
                      children: [
                        Text(price, style: TextStyle(fontSize: 16)),
                        SizedBox(width: 55),
                        Row(
                          children: [
                            Text(
                              dateTime!,
                              style: TextStyle(
                                color: Colors.black45,
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(width: 15),
                            Text(
                              numItems,
                              style: TextStyle(
                                color: Colors.black45,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Appwidget.sizeheight(),
          Row(
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,

                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.deepOrange.shade700),
                    borderRadius: BorderRadius.circular(15),
                  ),

                  child: Text(rate, style: TextStyle(color: Colors.deepOrange)),
                ),
              ),
              SizedBox(width: 100),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  height: 50,

                  child: Text(reorder, style: TextStyle(color: Colors.white)),
                ),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
