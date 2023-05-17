// To parse this JSON data, do
//
//     final chat = chatFromJson(jsonString);

import 'dart:convert';

Chat chatFromJson(String str) => Chat.fromJson(json.decode(str));

String chatToJson(Chat data) => json.encode(data.toJson());

class Chat {
    String avatar;
    String name;
    bool isGroup;
    String updateAt;
    String message;

    Chat({
        required this.avatar,
        required this.name,
        required this.isGroup,
        required this.updateAt,
        required this.message,
    });

    factory Chat.fromJson(Map<String, dynamic> json) => Chat(
        avatar: json["avatar"],
        name: json["name"],
        isGroup: json["isGroup"],
        updateAt: json["updateAt"],
        message: json["message"],
    );

    Map<String, dynamic> toJson() => {
        "avatar": avatar,
        "name": name,
        "isGroup": isGroup,
        "updateAt": updateAt,
        "message": message,
    };
}
