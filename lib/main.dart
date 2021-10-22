// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, avoid_print,prefer_const_literals_to_create_immutables, unnecessary_string_interpolations, unused_local_variable, non_constant_identifier_names

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Custom%20UI/Dropdown_More.dart';
import 'package:whatsapp_clone/Tabs/CameraTab.dart';
import 'package:whatsapp_clone/Tabs/ChatTab.dart';
import 'package:whatsapp_clone/Tabs/StatusTab.dart';

import 'Screen/Camera.dart';


 
Future<void> main() async {

  cameras_ = await availableCameras();

  runApp(const MyApp());
}
 
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);
 
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData( 
        primaryColor: Color(0xFF075E54),
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Color(0xFF128C7E)),
        materialTapTargetSize: MaterialTapTargetSize.padded,
      ),
      
      home: DefaultTabController(  
        length: 4, 
        initialIndex: 2,

        child: Scaffold (
          appBar: AppBar(
            title: Text("WhatsApp", style: TextStyle(color: Colors.white, fontSize: 22.0, fontWeight: FontWeight.w600)),
            backgroundColor: Color(0xFF128C7E),
            
            actions: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Icon(Icons.search),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Dropdown_More(),
              ),
            ],


            bottom: TabBar(
              tabs: [
                
                Tab(child: Icon(Icons.camera_alt)),
                Tab(child: Text("CHATS")),
                Tab(child: Text("STATUS")),
                Tab(child: Text("CALLS")),
              ], 
              indicatorColor: Colors.white,
              
          ),  
        ),
 
        body: TabBarView(  
            children: [

              CameraTab(),
              ChatTab(),
              
              // Expanded(child: ListView.builder(
              //     itemCount: 5,
              //     itemBuilder: (context, index) {
              //       return ListTile(
              //         title: Text("${index}"),
              //       );
              //       },
              //     )
              //   ),

              statusTab(),
              Text("4"),
            ],  
          )
        )
      )
    );
  }
 


 
Chat(){

  // List<Map<String,dynamic>> obj = [{"Muhammad Fahad",}]; 
  List<Widget> lst = [];
  // var myData = json.decode(getJson());
  
  ListView.builder(
  itemCount: 5,
  itemBuilder: (context, index) {
    return ListTile(
      title: Text("${index}"),
    );
    },
  );
  
  // for (var i = 0; i < 10; i++) {
   
  //     lst.add(
  //       Container(
  //         decoration: BoxDecoration(
  //           border: Border(
  //             bottom: BorderSide(color: Color(0xFFEEEEEE))
  //           )
  //         ),

  //         child: ListTile_(name: 'abc', message: '123aa21', messagetype: 'Receive', dateTime: '5:23 pm', imageUrl: 'https://cdn.pixabay.com/photo/2021/08/25/20/42/field-6574455__480.jpg', unRead: '',)
  //       ),
          
  //     );
 
  // }
  // return lst;
 
}
 
 
}
 
 
 
 

