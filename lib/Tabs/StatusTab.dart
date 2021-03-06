// ignore_for_file: file_names


import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Custom%20UI/Status/OwnStatus.dart';
import 'package:whatsapp_clone/Custom%20UI/Status/StatusCard.dart';
import 'package:whatsapp_clone/Screen/Status_Screen.dart';

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
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        
        children: [
           FloatingActionButton(         
            foregroundColor:Colors.black38,
            backgroundColor: Colors.grey[350], 
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap ,
            onPressed: () {},
            elevation: 8,
            child: Icon(Icons.edit),
          ),
    
          SizedBox(height: 13,),
    
          FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.camera_alt)
          ),
        ],
      ),
      body: const SingleChildScrollView(
        child: status_Screen()
      )
    );
  }
}