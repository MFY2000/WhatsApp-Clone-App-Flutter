// ignore_for_file: file_names

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';


List<CameraDescription> cameras_ = []; 


class Camera extends StatefulWidget {

   

  const Camera({ Key? key }) : super(key: key);

  @override
  _CameraState createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  
  late CameraController _cameraController;

  late Future<void> cameraValue;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _cameraController = CameraController(cameras_[0], ResolutionPreset.high);
    cameraValue = _cameraController.initialize();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FutureBuilder(builder: (){})
        ],
      ),
    );
  }
}