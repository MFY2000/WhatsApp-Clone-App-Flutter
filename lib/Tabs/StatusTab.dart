// ignore_for_file: file_names


import 'package:flutter/material.dart';

class statusTab extends StatefulWidget {
  const statusTab({ Key? key }) : super(key: key);

  @override
  _statusTabState createState() => _statusTabState();
}

class _statusTabState extends State<statusTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        children: [
           FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.chat),
          ),
          FloatingActionButton(
            foregroundColor:Colors.black38,
            backgroundColor: Colors.grey[350], 
            onPressed: () {},
            child: Icon(Icons.camera_alt)
          ),

        ],
      )
      
    );
  }
}