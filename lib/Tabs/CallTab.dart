// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Model/CallModel.dart';
import 'package:whatsapp_clone/Screen/Call_Screen.dart';


 List<CallModel> callHistroy = [ CallModel(
    name: "Muhammad Fahad", 
    time: "today, 9:23 pm",
    type: 1, imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEpOB50Gf-839DMNoHRlYYBAWP0TN73RHsGg&usqp=CAU'
    ), CallModel(
    name: "Bilal", 
    time: "today, 8:23 pm",
    type: 1, imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEpOB50Gf-839DMNoHRlYYBAWP0TN73RHsGg&usqp=CAU'
    ), CallModel(
    name: "Asim", 
    time: "7:23 pm",
    type: 1, imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEpOB50Gf-839DMNoHRlYYBAWP0TN73RHsGg&usqp=CAU'
    ),
  
   ]; 



class callTab extends StatelessWidget {
  const callTab({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CallSrceen(callLog: callHistroy);
  }
}