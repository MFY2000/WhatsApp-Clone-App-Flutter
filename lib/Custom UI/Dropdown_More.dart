
// ignore_for_file: camel_case_types, file_names


import 'package:flutter/material.dart';

class Dropdown_More extends StatelessWidget {
  const Dropdown_More({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      
      onSelected: (value){
        print(value);
      },

      itemBuilder: (BuildContext context){
        return const[
          PopupMenuItem(child: Text("New group"), value: "New group",),
          PopupMenuItem(child: Text("New broadcast"), value: "New broadcast",),
          PopupMenuItem(child: Text("Linked devics"), value: "Linked devics",),
          PopupMenuItem(child: Text("Starred messages"), value: "Starred messages",),
          PopupMenuItem(child: Text("Settings"), value: "Settings",),
        ];
    });
  }
}