// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, avoid_print,prefer_const_literals_to_create_immutables, unnecessary_string_interpolations

 
import 'package:flutter/material.dart';

 
import 'package:intl/intl.dart';
import 'package:whatsapp_clone/Widget/Customize/ListTile_.dart';


 
void main() {
  runApp(const MyApp());
}
 
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);
 
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(  
        length: 4, 
        initialIndex: 1,

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
                child: Icon(Icons.more_vert),
              ),
            ],


            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.camera_alt),iconMargin: EdgeInsets.all(0),),
                Tab(child: Text("CHATS")),
                Tab(child: Text("STATUS")),
                Tab(child: Text("CALLS")),
              ], 
              indicatorColor: Colors.white,
              
          ),  
        ),
 
        body: SingleChildScrollView(
          child: Column( children:Chat() )
          )
        ),
      )
    );
  }
 



 
List<Widget> Chat(){

  // List<Map<String,dynamic>> obj = [{"Muhammad Fahad",}]; 


  List<Widget> lst = [];
 
  for (var i = 0; i < 10; i++) {
   
      lst.add(
        Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Color(0xFFEEEEEE))
            )
          ),

          child: ListTile_()
        ),
          
      );
 
  }
  return lst;
 
}
 
 
}
 
 
 
 

