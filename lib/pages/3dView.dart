import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class View3DPage extends StatefulWidget {
  const View3DPage({super.key});

  @override
  State<View3DPage> createState() => _View3DPageState();
}

class _View3DPageState extends State<View3DPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('3D View'),
      ),
      body: SafeArea(
        child: Container(
          child: ModelViewer(
            src: 'assets/rayban_sunglasses.glb',
            alt: 'A 3D model of sunglasses',
            ar: true,
            autoRotate: true,
            cameraControls: true,
          ),
        ),
      ),
    );
  }
}