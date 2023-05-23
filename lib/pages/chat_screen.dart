import 'package:flutter/material.dart';
import 'package:whatsapp/models/single_chat_model.dart';
import 'package:whatsapp/pages/chat_bubble.dart';
import 'package:whatsapp/widgets/utilityWidget.dart';

import '../models/chatModel.dart';

class ChatDetail extends StatefulWidget {
  ChatDetail({super.key,required this.userdata});
  Chat userdata;

  @override
  State<ChatDetail> createState() => _ChatDetailState();
}

class _ChatDetailState extends State<ChatDetail> {
  List<SingleChat>messages=[
    SingleChat(isSend: true, isReaded: true, message: 'hello', sendAt: "8.09AM"),
    SingleChat(isSend: false, isReaded: false, message: 'hi', sendAt: "8.04 PM"),
    SingleChat(isSend: true, isReaded: true, message: 'hey', sendAt: "10.09AM"),
    SingleChat(isSend: true, isReaded: true, message: 'hw are u', sendAt: "8.09AM"),



  ];
  bool showSend=false; 
  bool showEmoji=false;
  FocusNode focusNode=FocusNode();
  TextEditingController messageController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
    leadingWidth: 80,
    leading: Row(
      children: [
        GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(Icons.arrow_back),
          
        ),
        CircleAvatar(
         backgroundImage: (widget.userdata.avatar! == '')
            ? NetworkImage((widget.userdata.isGroup!)
                ? 'https://image.winudf.com/v2/image/Y29tLmFwcC53aGF0c2FwcC5kcC5wcm9maWxlLnBpYy5kb3dubG9hZC5zYXZlcl9pY29uXzBfYTRmYmNhODM/icon.png?w=&fakeurl=1'
                : 'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png')
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
    actions: [
      IconButton(onPressed: () {
        
      }, icon:Icon(Icons.video_call)),
      UtilityWidget().widthSpacer(10),
      IconButton(onPressed: () {
        
      }, icon:Icon(Icons.call) ),
      UtilityWidget().widthSpacer(10),

      PopupMenuButton(itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(child: Text('View Contact')),
                PopupMenuItem(child: Text('Media links,and docs')),
                PopupMenuItem(child: Text('Search')),
                PopupMenuItem(child: Text('Mute Notifications')),
                PopupMenuItem(child: Text('Disappearing messages')),
                PopupMenuItem(child: Text('Wall paper')),
                PopupMenuItem(child: Text('More')),
              ];
      }
    
       ),
       UtilityWidget().widthSpacer(10),
    ],
      ),
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
             width: MediaQuery.of(context).size.width,
             child: Image.asset('assets/images/wallpaper.png',
             fit: BoxFit.cover,
             ),

          ),
          ListView.builder(
            itemCount: messages.length,
            itemBuilder: (context, index) {
            return ChatBubble(message: messages[index]);
          },),

          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width -70,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25)
                      ),
                      child: TextField(
                        cursorColor: Colors.teal,
                        decoration: InputDecoration(),
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
}
