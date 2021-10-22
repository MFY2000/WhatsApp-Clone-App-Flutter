
// ignore_for_file: camel_case_types, file_names


import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Custom%20UI/Chats/chatCards.dart';
import 'package:whatsapp_clone/Model/ChatModel.dart';

class Chats_Screen extends StatefulWidget {
  final List<ChatsModel> chats;

  const Chats_Screen({ Key? key,required this.chats }) : super(key: key);

  @override
  _Chats_ScreenState createState() => _Chats_ScreenState(chats);
}

class _Chats_ScreenState extends State<Chats_Screen> {
  late List<ChatsModel> chats;

  _Chats_ScreenState(this.chats);

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