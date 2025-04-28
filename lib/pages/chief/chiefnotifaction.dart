import 'package:flutter/material.dart';
import 'package:foodui/widgets/app_text_field.dart';

class Chiefnotifaction extends StatefulWidget {
  const Chiefnotifaction({super.key});

  @override
  State<Chiefnotifaction> createState() => _ChiefnotifactionState();
}

class _ChiefnotifactionState extends State<Chiefnotifaction>
    with TickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.blueGrey.shade400,
                      ),
                      child: const Icon(Icons.arrow_back_ios_new),
                    ),
                  ),
                  const SizedBox(width: 15),
                  const Expanded(child: Text("Add New Items")),
                  const Text("RESET"),
                ],
              ),
              const SizedBox(height: 15),

              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //   children: [
              //     Hero(
              //       tag: 'an',
              //       child: GestureDetector(
              //         onTap: () {
              //           setState(() {
              //             showNotification = true;
              //           });
              //         },
              //         child: Container(
              //           padding: const EdgeInsets.symmetric(
              //             vertical: 10,
              //             horizontal: 15,
              //           ),
              //           decoration: BoxDecoration(
              //             border: Border(
              //               bottom: BorderSide(
              //                 color:
              //                     showNotification
              //                         ? Colors.orange
              //                         : Colors.transparent,
              //                 width: 3,
              //               ),
              //             ),
              //           ),
              //           child: Text(
              //             "Notification",
              //             style: TextStyle(
              //               fontWeight:
              //                   showNotification
              //                       ? FontWeight.bold
              //                       : FontWeight.normal,
              //               color:
              //                   showNotification ? Colors.black : Colors.grey,
              //             ),
              //           ),
              //         ),
              //       ),
              //     ),
              //     Hero(
              //       tag: 'an',
              //       child: GestureDetector(
              //         onTap: () {
              //           setState(() {
              //             showNotification = false;
              //           });
              //         },
              //         child: Container(
              //           padding: const EdgeInsets.symmetric(
              //             vertical: 8,
              //             horizontal: 16,
              //           ),
              //           decoration: BoxDecoration(
              //             border: Border(
              //               bottom: BorderSide(
              //                 color:
              //                     !showNotification
              //                         ? Colors.orange
              //                         : Colors.transparent,
              //                 width: 3,
              //               ),
              //             ),
              //           ),
              //           child: Text(
              //             "Message(3)",
              //             style: TextStyle(
              //               fontWeight:
              //                   !showNotification
              //                       ? FontWeight.bold
              //                       : FontWeight.normal,
              //               color:
              //                   !showNotification ? Colors.black : Colors.grey,
              //             ),
              //           ),
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
              TabBar(
                indicatorColor: Colors.orange,
                indicatorWeight: 5,
                indicatorSize: TabBarIndicatorSize.tab,
                labelColor: Colors.deepOrange,

                controller: _tabController,
                tabs: [Tab(text: "Notification"), Tab(text: "messages")],
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
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
                        const Divider(height: 50),
                      ],
                    ),
                    Column(
                      children: [
                        message(
                          profile:
                              'https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=600',
                          titleText: 'Royal Parvej',
                          subtitle: 'Sounds awesome',
                          time: '19:37',
                          num: '1',
                        ),
                        const Divider(height: 50),
                        message(
                          profile:
                              'https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=600',
                          titleText: 'Royal Parvej',
                          subtitle: 'Sounds awesome',
                          time: '19:37',
                          num: '2',
                        ),
                        const Divider(height: 50),
                        message(
                          profile:
                              'https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=600',
                          titleText: 'Royal Parvej',
                          subtitle: 'Sounds awesome',
                          time: '19:37',
                          num: '1',
                        ),
                        const Divider(height: 50),
                        message(
                          profile:
                              'https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=600',
                          titleText: 'Royal Parvej',
                          subtitle: 'Sounds awesome',
                          time: '19:37',
                          num: '3',
                        ),
                        const Divider(height: 50),
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
