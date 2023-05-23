
import 'package:flutter/material.dart';

import 'chatPage.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
     late TabController _controller;
     @override 
     @override
     void initState() {
       super.initState();
       _controller = TabController(length: 4,initialIndex:1 , vsync: this);
       
     }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WhatsApp'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt)),
          SizedBox(
            width: 10,
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          SizedBox(
            width: 10,
          ),
          PopupMenuButton(
            onSelected: (value) {
              print(value);
            },
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(value: 1, child: Text('New group')),
                PopupMenuItem(value: 2, child: Text('New broadcast')),
                PopupMenuItem(value: 3, child: Text('Linked devices')),
                PopupMenuItem(value: 4, child: Text('Starred messages')),
                PopupMenuItem(value: 5, child: Text('Payments')),
                PopupMenuItem(value: 6, child: Text('Settings')),
              ];
            },
          ),
          SizedBox(
            width: 5,
          )
        ],
        bottom: TabBar(
          tabs: [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              text: 'Chats',
            ),
            Tab(
              text: 'Status',
            ),
            Tab(
              text: 'Calls',
            ),
          ],
          controller: _controller,
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: [
          Text('Camera'),
          ChatPage(),
          Text('Status'),
          Text('Calls')
      ]),
    );
  }
}

