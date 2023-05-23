import 'package:flutter/material.dart';
import 'package:whatsapp/models/chatModel.dart';
import 'package:whatsapp/pages/chatTile.dart';

class ChatPage extends StatelessWidget {
   ChatPage({super.key});
  List<Chat> chatlist = [
    Chat(
        avatar: '',
        name: 'Siyad',
        isGroup: false,
        updateAt: '7.36 pm',
        message: 'Hi da',
        status: 'last seen on Sat'),
        
        Chat(
        avatar: '',
        name: 'Fathima',
        isGroup: false,
        updateAt: '4.58 pm',
        message: 'Hey',
        status: 'last seen 3 mintes ago'),

        Chat(
        avatar: '',
        name: 'Red Devils Kerala',
        isGroup: true,
        updateAt: '1.21 am',
        message: 'Score.?',
        status: 'online'),
        Chat(
        avatar: '',
        name: 'Aadil',
        isGroup: false,
        updateAt: '12.11 pm',
        message: 'Hello',
        status: 'online'),

        Chat(
        avatar: '',
        name: 'BAABTRA',
        isGroup: true,
        updateAt: '8.29 am',
        message: 'Next week schedule',
        status: 'online'),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: chatlist.length,
        itemBuilder: (BuildContext context,int index) {
          return ChatTile(userdata: chatlist[index]);
          
        },
      ),
      floatingActionButton: FloatingActionButton(onPressed: () { },
      child: Icon(Icons.message),
      ),
    );
  }
}
