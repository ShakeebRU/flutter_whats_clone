import 'package:flutter/material.dart';
import 'package:whatsapp/screens/calls.screen.dart';
import 'package:whatsapp/screens/chats_screen.dart';
import 'package:whatsapp/screens/status_screen.dart';

class MyTabViewScreen extends StatefulWidget {
  const MyTabViewScreen({super.key});

  @override
  State<MyTabViewScreen> createState() => _MyTabViewScreenState();
}

class _MyTabViewScreenState extends State<MyTabViewScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xFF075E54),
            title: const Text("Whats App"),
            bottom: TabBar(
              unselectedLabelColor: Colors.black,
              labelColor: Colors.white,
              indicatorColor: Colors.white,
              tabs: [
                Tab(
                  // text: "CHATS",
                  // icon: Icon(Icons.local_airport),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text("CHATS"),
                      Icon(Icons.chat),
                    ],
                  ),
                ),
                Tab(
                  // text: "STATUS",
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text("STATUS"),
                      Icon(
                        Icons.circle_notifications_rounded,
                      ),
                    ],
                  ),
                ),
                Tab(
                  // text: "CALLS",
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text("CALLS"),
                      Icon(
                        Icons.phone,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          body: const TabBarView(children: [
            ChatScreen(),
            StatsScreen(),
            CallScreen(),
          ])),
    );
  }
}
