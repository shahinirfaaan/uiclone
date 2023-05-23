import 'package:flutter/material.dart';
import 'package:whatsapp/models/single_chat_model.dart';

class ChatBubble extends StatelessWidget {
  ChatBubble({Key? key, required this.message}):super(key: key);
  SingleChat message;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width-150),
          child: Card(
            color: Colors.white,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5,right: 45,bottom: 20),
                  child: Text(message.message!),
                ),
                Positioned(
                  top: 14,
                  right: 3,
      
                  child:Row(
                  children: [
                    Text('8.00 PM',style: TextStyle(fontSize: 10),),
                  ],
                ) ),
              ],
            ),
          ),
          ),
          
    );
  }
}
