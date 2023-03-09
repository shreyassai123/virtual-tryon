import 'package:deepar_flutter/deepar_flutter.dart';
import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';
import 'pages/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   home: Scaffold(
    //     appBar: AppBar(title: Text("Model Viewer")),
    //     body: ModelViewer(
    //       src: 'https://modelviewer.dev/shared-assets/models/Astronaut.glb',
    //       alt: "A 3D model of an astronaut",
    //       ar: true,
    //       autoRotate: true,
    //       cameraControls: true,
    //     ),
    //   ),
    // );
    return const MaterialApp(home: LoginPage());
  }
}

