
// ignore_for_file: camel_case_types, file_names


import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Custom%20UI/Chats/chatCards.dart';
import 'package:whatsapp_clone/Model/ChatModel.dart';

class chatsScreen extends StatefulWidget {
  final List<ChatsModel> chats;

  const chatsScreen({ Key? key,required this.chats }) : super(key: key);

  @override
  _chatsScreenState createState() => _chatsScreenState(chats);
}

class _chatsScreenState extends State<chatsScreen> {
  late List<ChatsModel> chats;

  _chatsScreenState(this.chats);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
    itemCount: chats.length,
    itemBuilder: (context, index) {
      return chatCards(chat: chats[index]);
    },
  );
  }
}