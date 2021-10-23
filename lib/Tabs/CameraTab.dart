// ignore_for_file: file_names,


import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Screen/Camera_Screen.dart';

class cameraTab extends StatelessWidget {
  const cameraTab({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return const Scaffold(
      body: Camera()
    );
  }
}