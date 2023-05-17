import 'package:flutter/material.dart';
import 'package:whatsapp/models/chatModel.dart';

class ChatTile extends StatelessWidget {
  ChatTile({Key? key,required this.userdata}):super(key: key);
  Chat userdata;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(userdata.avatar) ,
      ),
      title: Text(userdata.name),
      subtitle: Text(userdata.message),
      trailing: Text(userdata.updateAt),
    );
  }
}