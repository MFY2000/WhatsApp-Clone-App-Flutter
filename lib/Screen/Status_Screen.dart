// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Custom%20UI/Status/OwnStatus.dart';
import 'package:whatsapp_clone/Custom%20UI/Status/StatusCard.dart';
import 'package:whatsapp_clone/Model/StatusModel.dart';

List<StatusModel> statusModel = [
  
  StatusModel(name: "Bilal", time: "Today, 17:49 pm", status: [
  {"https://miro.medium.com/max/1200/1*mk1-6aYaf_Bes1E3Imhc0A.jpeg": true},
  {"https://miro.medium.com/max/1200/1*mk1-6aYaf_Bes1E3Imhc0A.jpeg": true},
  {"https://miro.medium.com/max/1200/1*mk1-6aYaf_Bes1E3Imhc0A.jpeg": false},
  {"https://miro.medium.com/max/1200/1*mk1-6aYaf_Bes1E3Imhc0A.jpeg": true},
  {"https://miro.medium.com/max/1200/1*mk1-6aYaf_Bes1E3Imhc0A.jpeg": true},
  {"https://miro.medium.com/max/1200/1*mk1-6aYaf_Bes1E3Imhc0A.jpeg": false}
  ]),
  
  StatusModel(name: "Ali", time: "Yesterday, 7:49 pm", status: [
  {"https://miro.medium.com/max/1200/1*mk1-6aYaf_Bes1E3Imhc0A.jpeg": false},
  {"https://miro.medium.com/max/1200/1*mk1-6aYaf_Bes1E3Imhc0A.jpeg":false}
  ])

  ];

class status_Screen extends StatelessWidget {
  const status_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: statusPanel(context)
    );
  }

  List<Widget> statusPanel(BuildContext context){
    List<Widget> status = [ownStatus()]; 
    List<Widget> recent = [Heading("Recent updates", context)];
    List<Widget> veiwed = [Heading("Veiwed updates", context),];

    for (var i = 0; i < statusModel.length; i++){
      if(statusModel[i].isSeen()) {
        recent.add(statusCard(person:statusModel[i]));
      } else{
        veiwed.add(statusCard(person:statusModel[i]));
      }
    }

    status.addAll(recent.length > 1 ? recent: []);
    status.add(SizedBox(height: 10,));
    status.addAll(veiwed.length > 1 ? veiwed: []);
    

    return status;
  }

  Widget Heading(String text, BuildContext context) {
    return Container(
      height: 33,
      width: MediaQuery.of(context).size.width,
      color: Colors.grey[300],
      child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 13, vertical: 7),
          child: Text(
            text,
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: Color(0xFF128C7E)),
          )),
    );
  }
}
