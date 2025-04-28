import 'package:flutter/material.dart';
import 'package:foodui/widgets/app_text_field.dart';

class practise extends StatefulWidget {
  const practise({super.key});

  @override
  State<practise> createState() => _practiseState();
}

class _practiseState extends State<practise> with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(title: Text("TAB CONTROLLER"), centerTitle: true),
        body: Column(
          children: [
            TabBar(
              indicatorColor: Colors.orange,
              indicatorWeight: 5,
              indicatorSize: TabBarIndicatorSize.tab,
              labelColor: Colors.deepOrange,

              controller: tabController,
              tabs: [
                Tab(text: "Notification"),
                Tab(text: "messages"),
                Tab(text: 'Hello'),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: [
                  Column(
                    children: [
                      notification(
                        ppimage:
                            'https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=600',
                        boldtext: 'Tanbir Ahmed',
                        time: '20 min ago',
                        subtext: 'Placed a \nnew order',
                        imageurl:
                            'https://images.pexels.com/photos/769289/pexels-photo-769289.jpeg?auto=compress&cs=tinysrgb&w=600',
                      ),
                      const Divider(height: 50),
                      notification(
                        ppimage:
                            'https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=600',
                        boldtext: 'Tanbir Ahmed',
                        time: '20 min ago',
                        subtext: 'Placed a \nnew order',
                        imageurl:
                            'https://images.pexels.com/photos/769289/pexels-photo-769289.jpeg?auto=compress&cs=tinysrgb&w=600',
                      ),
                      const Divider(height: 50),
                      notification(
                        ppimage:
                            'https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=600',
                        boldtext: 'Tanbir Ahmed',
                        time: '20 min ago',
                        subtext: 'Placed a \nnew order',
                        imageurl:
                            'https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=600',
                      ),
                      const Divider(height: 50),
                      notification(
                        ppimage:
                            'https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=600',
                        boldtext: 'Nischal Bhattarai',
                        time: '1 hr ago',
                        subtext: 'Placed a \nnew order',
                        imageurl:
                            'https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=600',
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      notification(
                        ppimage:
                            'https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=600',
                        boldtext: 'Tanbir Ahmed',
                        time: '20 min ago',
                        subtext: 'Placed a \nnew order',
                        imageurl:
                            'https://images.pexels.com/photos/769289/pexels-photo-769289.jpeg?auto=compress&cs=tinysrgb&w=600',
                      ),
                      const Divider(height: 50),
                      notification(
                        ppimage:
                            'https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=600',
                        boldtext: 'Tanbir Ahmed',
                        time: '20 min ago',
                        subtext: 'Placed a \nnew order',
                        imageurl:
                            'https://images.pexels.com/photos/769289/pexels-photo-769289.jpeg?auto=compress&cs=tinysrgb&w=600',
                      ),
                      const Divider(height: 50),
                      notification(
                        ppimage:
                            'https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=600',
                        boldtext: 'Tanbir Ahmed',
                        time: '20 min ago',
                        subtext: 'Placed a \nnew order',
                        imageurl:
                            'https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=600',
                      ),
                      const Divider(height: 50),
                      notification(
                        ppimage:
                            'https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=600',
                        boldtext: 'Nischal Bhattarai',
                        time: '1 hr ago',
                        subtext: 'Placed a \nnew order',
                        imageurl:
                            'https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=600',
                      ),
                    ],
                  ),

                  Column(
                    children: [
                      notification(
                        ppimage:
                            'https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=600',
                        boldtext: 'Tanbir Ahmed',
                        time: '20 min ago',
                        subtext: 'Placed a \nnew order',
                        imageurl:
                            'https://images.pexels.com/photos/769289/pexels-photo-769289.jpeg?auto=compress&cs=tinysrgb&w=600',
                      ),
                      const Divider(height: 50),
                      notification(
                        ppimage:
                            'https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=600',
                        boldtext: 'Tanbir Ahmed',
                        time: '20 min ago',
                        subtext: 'Placed a \nnew order',
                        imageurl:
                            'https://images.pexels.com/photos/769289/pexels-photo-769289.jpeg?auto=compress&cs=tinysrgb&w=600',
                      ),
                      const Divider(height: 50),
                      notification(
                        ppimage:
                            'https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=600',
                        boldtext: 'Tanbir Ahmed',
                        time: '20 min ago',
                        subtext: 'Placed a \nnew order',
                        imageurl:
                            'https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=600',
                      ),
                      const Divider(height: 50),
                      notification(
                        ppimage:
                            'https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=600',
                        boldtext: 'Nischal Bhattarai',
                        time: '1 hr ago',
                        subtext: 'Placed a \nnew order',
                        imageurl:
                            'https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=600',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
