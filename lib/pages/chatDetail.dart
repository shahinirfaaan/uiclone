import 'package:flutter/material.dart';
import 'package:whatsapp/models/chatModel.dart';

class ChatDetail extends StatefulWidget {
  ChatDetail({super.key,required this.userdata});
  Chat userdata;
  

  @override
  State<ChatDetail> createState() => _ChatDetailState();
}

class _ChatDetailState extends State<ChatDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {
          }, icon: Icon(Icons.video_call),iconSize: 22,),
          IconButton(onPressed: () {
          }, icon: Icon(Icons.call),iconSize: 21,),
          PopupMenuButton(
            onSelected: (value) {
              print(value);

            },
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(value: 1, child: Text('View contact')),
                PopupMenuItem(value: 2, child: Text('Media,links and docs')),
                PopupMenuItem(value: 3, child: Text('Search')),
                PopupMenuItem(value: 4, child: Text('Mute notifications')),
                PopupMenuItem(value: 5, child: Text('Disappearing messages')),
                PopupMenuItem(value: 6, child: Text('Wallpaper')),
                PopupMenuItem(value: 7, child: Text('More')), 
              ];
            },
       ) ],
        leadingWidth: 80,
        leading: Row(
          children: [
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Icon(Icons.arrow_back),
            ),
            CircleAvatar(
              backgroundImage: (widget.userdata.avatar == "")
            ? NetworkImage((widget.userdata.isGroup!)
                ? "https://image.winudf.com/v2/image/Y29tLmFwcC53aGF0c2FwcC5kcC5wcm9maWxlLnBpYy5kb3dubG9hZC5zYXZlcl9pY29uXzBfYTRmYmNhODM/icon.png?w=&fakeurl=1"
                : "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png")
            : NetworkImage(widget.userdata.avatar!),
            ),
          ],
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.userdata.name!,
            style: TextStyle(fontSize: 18),
            
            ),
            Text(widget.userdata.status!,
            style: TextStyle(fontSize: 12),
            
            ),
          ],
        ),
        
      ),
      body: Text('Detail Screen'),
    );
  }
}