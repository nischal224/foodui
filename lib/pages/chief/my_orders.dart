import 'package:flutter/material.dart';
import 'package:foodui/widgets/app_text_field.dart';
import 'package:lucide_icons_flutter/test_icons.dart';

class MyOrders extends StatefulWidget {
  const MyOrders({super.key});

  @override
  State<MyOrders> createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey.shade300,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Icon(Icons.arrow_back_ios_new),
                  ),
                  SizedBox(width: 10),
                  Expanded(child: Text("My Orders")),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey.shade300,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Icon(Icons.do_disturb_off),
                  ),
                ],
              ),
              TabBar(
                indicatorColor: Colors.orange,
                indicatorWeight: 8,
                indicatorSize: TabBarIndicatorSize.tab,
                labelColor: Colors.deepOrange,

                controller: _tabController,
                tabs: [Tab(text: "Ongoing"), Tab(text: "History")],
              ),
              SizedBox(height: 15),

              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  physics: ScrollPhysics(),
                  children: [
                   
                    ListView(
                      padding: EdgeInsets.zero,
                      children: [
                        ongoing(
                          name: "food",
                          status: "completed",
                          orderNo: '#12345',
                          photo:
                              'https://images.pexels.com/photos/1222271/pexels-photo-1222271.jpeg?auto=compress&cs=tinysrgb&w=600',
                          title: 'Pizza Hut',
                          price: '\$35.25',
                          dateTime: '29 JAN, 12:30',
                          numItems: "03 items",
                          rate: 'Rate',
                          reorder: "Re-Order",
                        ),
                        SizedBox(height: 15),

                        ongoing(
                          name: "food",
                          status: "completed",
                          orderNo: '#12345',
                          photo:
                              'https://images.pexels.com/photos/1222271/pexels-photo-1222271.jpeg?auto=compress&cs=tinysrgb&w=600',
                          title: 'Pizza Hut',
                          price: '\$35.25',
                          dateTime: '29 JAN, 12:30',
                          numItems: "03 items",
                          rate: 'Rate',
                          reorder: "Re-Order",
                        ),
                      ],
                    ),

                    ListView(
                      padding: EdgeInsets.zero,
                      children: [
                        ongoing(
                          name: "food",
                          status: "",
                          orderNo: '#12345',
                          photo:
                              'https://images.pexels.com/photos/1222271/pexels-photo-1222271.jpeg?auto=compress&cs=tinysrgb&w=600',
                          title: 'Pizza Hut',
                          price: '\$35.25',
                          dateTime: '',
                          numItems: "03 items",
                          rate: 'Track Order',
                          reorder: "cancel",
                        ),
                        SizedBox(height: 15),
                        ongoing(
                          name: "food",
                          status: '',
                          orderNo: '#12345',
                          photo:
                              'https://images.pexels.com/photos/1222271/pexels-photo-1222271.jpeg?auto=compress&cs=tinysrgb&w=600',
                          title: 'Pizza Hut',
                          price: '\$35.25',
                          dateTime: '',
                          numItems: "03 items",
                          rate: 'Track Order',
                          reorder: "cancel",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
