// ignore_for_file: file_names, prefer_const_constructors, unnecessary_string_interpolations, camel_case_types

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ListTile_ extends StatelessWidget {
  const ListTile_({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
            tileColor: Colors.white54,
              
              title: Text("Fahad", style: TextStyle(color: Colors.black)),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Icon(Icons.doublecheck, size: 15,color: Color(0xFFD6D6D6)),
                  SizedBox(width: 10),
                  Text("Hello", style: TextStyle(color:  Color(0xFFD6D6D6))),
                ],
              ),

              leading: CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2021/08/25/20/42/field-6574455__480.jpg"),
              ),

              trailing: Column(
                  children: [
                    Column (
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("${DateFormat('yyyy-MM-dd').format(DateTime.now())}"),
                        CircleAvatar(radius: 10, backgroundColor: Colors.green,
                          child: Text("1", style: TextStyle(fontSize: 7,fontWeight: FontWeight.bold))),
                      ]
                    ),
                    
                  ],
                ),
              );
  }
}