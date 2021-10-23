
// ignore_for_file: file_names


import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Model/ChatModel.dart';
import 'package:whatsapp_clone/Screen/Chats_Screen.dart';

class ChatTab extends StatefulWidget {
  const ChatTab({ Key? key }) : super(key: key);

  @override
  _ChatTabState createState() => _ChatTabState();
}

class _ChatTabState extends State<ChatTab> {
  List<ChatsModel> chats = [ ChatsModel(
    name: "Muhammad Fahad", 
    time: "7:23 pm", 
    message: "Hi", 
    tags: ["Pin","Mute","Unseen"], 
    isGroup: false,
    imageUrl: "https://cdn.pixabay.com/photo/2021/08/25/20/42/field-6574455__480.jpg", 
    chatStatus: "send" //Send {send, delivery, seen}, Receive 
  ), ChatsModel(
    name: "Bilal", 
    time: "7:23 pm", 
    message: "Hi", 
    tags: ["Unseen","Pin","Mute"], 
    isGroup: false,
    imageUrl: "https://cdn.pixabay.com/photo/2021/08/25/20/42/field-6574455__480.jpg", 
    chatStatus: "delivery" //Send {send, delivery, seen}, Receive 
  ), ChatsModel(
    name: "Ali", 
    time: "7:23 pm", 
    message: "Hi", 
    tags: ["Unseen","Pin","Mute"], 
    isGroup: false,
    imageUrl: "https://cdn.pixabay.com/photo/2021/08/25/20/42/field-6574455__480.jpg", 
    chatStatus: "seen" //Send {send, delivery, seen}, Receive 
  ), ChatsModel(
    name: "Rafa", 
    time: "7:23 pm", 
    message: "Hi", 
    tags: ["Unseen","Pin","Mute"], 
    isGroup: false,
    imageUrl: "https://cdn.pixabay.com/photo/2021/08/25/20/42/field-6574455__480.jpg", 
    chatStatus: "Receive" //Send {send, delivery, seen}, Receive 
  ) 
  
   ]; 


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.chat),
      ),
      body: Container(
        child: chatsScreen(chats: chats),
      ),
    );
  }
}