// ignore_for_file: file_names

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class statusCard extends StatefulWidget {
  const statusCard({ Key? key }) : super(key: key);

  @override
  _statusCardState createState() => _statusCardState();
}

class _statusCardState extends State<statusCard> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
    tileColor: Colors.white54,
     
     title: Text("chat.name", style: TextStyle(color: Colors.black)),
     subtitle: 
        Text("chat.message", style: TextStyle(color:  Color(0xFFD6D6D6))),
       

    leading: Container(
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFF000000), width: 1.0,style: BorderStyle.solid,),
        borderRadius: BorderRadius.circular(25)
      ),
      child: CircleAvatar(
         radius: 25,
       ),
    ),
    );
  }
}