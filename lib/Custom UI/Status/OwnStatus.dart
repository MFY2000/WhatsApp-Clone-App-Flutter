// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ownStatus extends StatelessWidget {
  const ownStatus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Stack(
        children: const [
          CircleAvatar(
            radius: 27,
            backgroundImage: NetworkImage(
                "https://cdn.pixabay.com/photo/2021/08/25/20/42/field-6574455__480.jpg"),// picture of the defualt user come here
          ),
          Positioned(
              bottom: 0,
              right: 0,
              child: CircleAvatar(
                backgroundColor: Color(0xFF128C7E),
                radius: 10,
                child: Icon(
                  Icons.add,
                  size: 18,
                  color: Colors.white,
                ),
              ))
        ],
      ),
      title: Text(
        "My Status",
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
      ),
      subtitle: Text(
        "Tap to add status update",
        style: TextStyle(fontSize: 13, color: Colors.grey[900]),
      ),

    );
  }
}

