// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Custom%20UI/Call/CallCards.dart';
import 'package:whatsapp_clone/Model/CallModel.dart';

class CallSrceen extends StatelessWidget {
  final List<CallModel> callLog;
  const CallSrceen({ Key? key, required this.callLog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
    itemCount: callLog.length,
    itemBuilder: (context, index) {
      return CallCards(callTitle: callLog[index]);
    },
  );
  }
}