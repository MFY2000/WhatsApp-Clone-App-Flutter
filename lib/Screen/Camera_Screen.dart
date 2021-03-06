// ignore_for_file: file_names, curly_braces_in_flow_control_structures, prefer_const_constructors

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
        fit:StackFit.expand,
        children: [
          FutureBuilder(
            future: cameraValue,
            builder: (context, snapshot){
            if(snapshot.connectionState == ConnectionState.done)
              return CameraPreview(_cameraController);
            else
              return Center(child: CircularProgressIndicator(),);
          }),

          Positioned(     
            bottom: 0.0,
            child: Container(
              padding: EdgeInsets.only(top: 15),
              width: MediaQuery.of(context).size.width,
              
              child: Column(
                children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.flash_off, color: Colors.white, size: 28,)),
                  InkWell(onTap: (){}, child: Icon(Icons.panorama_fish_eye, color: Colors.white, size: 70)),
                  IconButton(onPressed: (){}, icon: Icon(Icons.flip_camera_ios, color: Colors.white, size:28)),
                ]),

                SizedBox(height:15),
                
                Positioned(     
                  bottom: 0.0,
                  width: MediaQuery.of(context).size.width,
                  child: Container(
                    padding: EdgeInsets.only(top: 10,bottom: 10),
                    color: Colors.black,
                    alignment: Alignment.center,
                    
                    child: Text("Hold for video, tap for photo", 
                      style: TextStyle(color: Colors.white, backgroundColor: Colors.black)))
                  )
              ]),
            ),
          )

        ],
      ),
    );
  }
}