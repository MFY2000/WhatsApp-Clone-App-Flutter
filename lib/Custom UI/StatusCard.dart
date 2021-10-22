// ignore_for_file: file_names

import 'package:fdottedline/fdottedline.dart';
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
       

     leading: FDottedLine(
      color: Colors.lightBlue[600],
      strokeWidth: 2.0,
      dottedLength: 10.0,
      space: 2.0,
      child: const CircleAvatar(radius: 20,)
      )
     
    //   CircleAvatar(
    //    radius: 25,
    //    backgroundImage: NetworkImage("chat.imageUrl"),
    //  ),
    );
  }
}