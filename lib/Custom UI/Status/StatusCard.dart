// ignore_for_file: file_names, unrelated_type_equality_checks

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Model/StatusModel.dart';

class statusCard extends StatelessWidget {
  final StatusModel person;
  statusCard({Key? key, required this.person}) : super(key: key);

  late String display;

  @override
  Widget build(BuildContext context) {
    display = person.status.first.keys.single;

    return ListTile(
        tileColor: Colors.white54,
        title: Text(person.name, style: TextStyle(color: Colors.black)),
        subtitle: Text(person.time, style: TextStyle(color: Color(0xFFD6D6D6))),
        leading: CustomPaint(
            painter: statusCircularBar(status: person.status),
            child: CircleAvatar(
              backgroundImage: NetworkImage(display),
              radius: 26,
            )));
  }
}

degreeToAngle(double degree) {
  return degree * (pi / 180);
}
setColor(bool color){
  return color ? Colors.green[800]: Colors.grey; 
}

class statusCircularBar extends CustomPainter {
  final List<Map<String, bool>> status;

  statusCircularBar({required this.status});

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..isAntiAlias = true
      ..strokeWidth = 5.0
      ..style = PaintingStyle.stroke;

    drawArc(canvas, size, paint);
  }

  void drawArc(Canvas canvas, Size size, Paint paint) {
    if (status.length == 1) {
      paint.color = setColor(status.first.values.first);
      canvas.drawArc(Rect.fromLTRB(0, 0, size.width, size.height),
          degreeToAngle(0), degreeToAngle(180), false, paint);
      return ;
    }
    
    
    var degree = -90;
    var arc = 360 / status.length;

    for (var i = 0; i < status.length; i++) {
      paint.color = setColor(status[i].values.first);

      canvas.drawArc(Rect.fromLTRB(0, 0, size.width, size.height),
          degreeToAngle((degree + 4)), degreeToAngle((arc - 8)), false, paint);
      degree += arc as int;
    }
    // if()
    // canvas.drawArc(, startAngle, sweepAngle, useCenter, paint)
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
