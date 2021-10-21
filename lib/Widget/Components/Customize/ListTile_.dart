// ignore_for_file: file_names, prefer_const_constructors, unnecessary_string_interpolations, camel_case_types, empty_statements, non_constant_identifier_names prefer_const_literals_to_create_immutables, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ListTile_ extends StatelessWidget {

  const ListTile_({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
            tileColor: Colors.white54,
              
              title: Text("name", style: TextStyle(color: Colors.black)),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  if("messagetype" == "Send")
                    Icon(Icons.check, size: 15,color: Color(0xFFD6D6D6))
                  else if("messagetype" == "Delivery")
                    Icon(Icons.done_all, size: 15,color: Color(0xFFD6D6D6))
                  else
                    Icon(Icons.done_all, size: 15,color: Colors.blue[900]),

                    SizedBox(width: 3),
                  
                  Text("message", style: TextStyle(color:  Color(0xFFD6D6D6))),
                ],
              ),

              leading: CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage("imageUrl"),
              ),

              trailing: Column(
                  children: [
                    Text("dateTime"),
                    SizedBox(height: 10),
                    if("unRead" != "")
                      CircleAvatar(radius: 10, backgroundColor: Color(0xFF128C7E), child: Text("unRead", style: TextStyle(fontSize: 7,fontWeight: FontWeight.bold))),
                  ],
                ),
              );
  }
}