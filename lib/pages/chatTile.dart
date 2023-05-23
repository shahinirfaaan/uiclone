
import 'package:flutter/material.dart';
import 'package:whatsapp/models/chatModel.dart';
import 'package:whatsapp/pages/chat_screen.dart';

class ChatTile extends StatelessWidget {
  ChatTile({Key? key, required this.userdata}) : super(key: key);
  Chat userdata;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ChatDetail(userdata: userdata) ,)),
      leading: CircleAvatar(
        backgroundImage: (userdata.avatar == '')
            ? NetworkImage((userdata.isGroup!)
                ? 'https://image.winudf.com/v2/image/Y29tLmFwcC53aGF0c2FwcC5kcC5wcm9maWxlLnBpYy5kb3dubG9hZC5zYXZlcl9pY29uXzBfYTRmYmNhODM/icon.png?w=&fakeurl=1'
                : 'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png')
            : NetworkImage(userdata.avatar!),
      ),
      title: Text(userdata.name!),
      subtitle: Text(userdata.message!),
      trailing: Text(userdata.updateAt!),
    );
  }
}
