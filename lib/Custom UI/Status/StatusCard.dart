// ignore_for_file: file_names

import 'package:flutter/material.dart';

class statusCard extends StatelessWidget {
  const statusCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
    tileColor: Colors.white54,
     
     title: Text("chat.name", style: TextStyle(color: Colors.black)),
     subtitle: 
        Text("chat.message", style: TextStyle(color:  Color(0xFFD6D6D6))),
       

    leading: CustomPaint(painter: statusCircularBar() ,child: CircleAvatar(backgroundImage: NetworkImage("chat.image"), radius: 27,))
    );
  }
}


class statusCircularBar extends CustomPainter{
  
  
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
    ..isAntiAlias = true
    ..strokeWidth = 6.0
    ..style = PaintingStyle.stroke;
    
    drawArc(canvas, size, paint);
  }

  void drawArc(Canvas canvas, Size size, Paint paint){
    if()
      canvas.drawArc(, startAngle, sweepAngle, useCenter, paint)
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
    
}