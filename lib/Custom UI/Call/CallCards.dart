// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Model/CallModel.dart';

class CallCards extends StatelessWidget {
  final CallModel callTitle;
  const CallCards({ Key? key, required this.callTitle }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
    tileColor: Colors.white54,
      
      title: Text(callTitle.name, style: TextStyle(color: Colors.black)),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
            
          if(callTitle.type == 1)
            Icon(Icons.arrow_back_outlined, size: 15,color: Colors.green)
          else if(callTitle.type == 2)
            Icon(Icons.done_all, size: 15,color: Color(0xFFD6D6D6))
          else if(callTitle.type == 3)
            Icon(Icons.done_all, size: 15,color: Colors.blue[900]),

            SizedBox(width: 3),
          
          Text(callTitle.time, style: TextStyle(color:  Color(0xFFD6D6D6))),
        ],
      ),

      leading: CircleAvatar(
        radius: 25,
        backgroundImage: NetworkImage(callTitle.imageUrl),
      ),

      trailing: Icon(Icons.call, size: 25, color: Colors.green,)
      );
  }
}