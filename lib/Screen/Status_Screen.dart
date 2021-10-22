// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:whatsapp_clone/Custom%20UI/Status/OwnStatus.dart';
import 'package:whatsapp_clone/Custom%20UI/Status/StatusCard.dart';
import 'package:whatsapp_clone/Model/StatusModel.dart';

List<StatusModel> statusModel = [
  
  StatusModel(name: "Bilal", time: "Today, 17:49 pm", status: [
  {"https://static.remove.bg/remove-bg-web/99ab439c6e8e26adfd8c59cee4eb26f0376a9584/assets/start-1abfb4fe2980eabfbbaaa4365a0692539f7cd2725f324f904565a9a744f8e214.jpg": true},
  {"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRW3yqQzJmYiZjThaK053YaizsKSIlhC47kBgqRk1wE9-HrAT9aAB1VfY4biaBE29yPE-4&usqp=CAU": false}
  ]),
  
  StatusModel(name: "Ali", time: "Yesterday, 7:49 pm", status: [
  {"https://static.remove.bg/remove-bg-web/99ab439c6e8e26adfd8c59cee4eb26f0376a9584/assets/start-1abfb4fe2980eabfbbaaa4365a0692539f7cd2725f324f904565a9a744f8e214.jpg": false},
  {"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRW3yqQzJmYiZjThaK053YaizsKSIlhC47kBgqRk1wE9-HrAT9aAB1VfY4biaBE29yPE-4&usqp=CAU":false}
  ])

  ];

class status_Screen extends StatelessWidget {
  const status_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ownStatus(),
        Heading("Recent updates", context),

        for (var i = 0; i < 4; i++) 
          statusCard(),

        SizedBox(height: 10,),

        Heading("Veiwed updates", context),
        for (var i = 0; i < 5; i++) 
          statusCard(),
      
      ],
    );
  }

  List<Widget> statusPanel(){
    List<Widget> status;
    List<Widget> recent;
    List<Widget> veiwed;

    for (var i = 0; i < count; i++) 
      if()
        recent.add(statusCard());
      else
        veiwed.add(statusCard());

    status.addAll(recent);  
    

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
