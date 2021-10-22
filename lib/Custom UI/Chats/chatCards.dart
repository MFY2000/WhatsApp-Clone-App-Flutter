


// ignore_for_file: file_names, prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables, no_logic_in_create_state

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Model/ChatModel.dart';
import 'dart:math' as math;

class chatCards extends StatefulWidget {
  final ChatsModel chat;

  const chatCards({ Key? key,required this.chat }) : super(key: key);

  @override
  _chatCardsState createState() => _chatCardsState(chat);
}

class _chatCardsState extends State<chatCards> {
  late ChatsModel chat;

  _chatCardsState(this.chat);


  @override
  Widget build(BuildContext context) {
  return ListTile(
    tileColor: Colors.white54,
      
      title: Text(chat.name, style: TextStyle(color: Colors.black)),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
            
          if(chat.chatStatus == "send")
            Icon(Icons.check, size: 15,color: Color(0xFFD6D6D6))
          else if(chat.chatStatus == "Delivery")
            Icon(Icons.done_all, size: 15,color: Color(0xFFD6D6D6))
          else if(chat.chatStatus == "seen")
            Icon(Icons.done_all, size: 15,color: Colors.blue[900]),

            SizedBox(width: 3),
          
          Text(chat.message, style: TextStyle(color:  Color(0xFFD6D6D6))),
        ],
      ),

      leading: CircleAvatar(
        radius: 25,
        backgroundImage: NetworkImage(chat.imageUrl),
      ),

      trailing: Column(
                children: [
                  Text(chat.time),          

                  SizedBox(height: 10,),

                  Row(
                    mainAxisSize:  MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      for (var element in chat.tags)    
                         displayTags(element),
                      
                    ],
                  ),

                ]
              )
  );
  
  }

Widget displayTags(String WidgetType){
  late Widget toReturn;

  switch (WidgetType) {
    case "Unseen":
      toReturn = (CircleAvatar(radius: 8, backgroundColor: Color(0xFF128C7E), 
                child: Text("1", style: TextStyle(fontSize: 7,fontWeight: FontWeight.bold))
      ));
      break;
    case "Pin":
      toReturn = (Transform.rotate(
        angle: 30 * (math.pi / 180), 
        child: Icon(Icons.push_pin_sharp, color: Colors.black38, size: 16,)));
      break;
    case "Mute":
      toReturn = (Icon(Icons.volume_off, color: Colors.black38, size: 16,));
      break;

    default:

  }


  return Container(margin: EdgeInsets.only(left: 5) ,child: toReturn);
}
  
}







// ClipRRect(
//   borderRadius: BorderRadius.only(topRight: Radius.circular(10)),
//   child: Container(
//     height: 40,
//     width: 40,
//     color: Colors.amber,
//     child: Text('Hello World!'),
//   ),
// );