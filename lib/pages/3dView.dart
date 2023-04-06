import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

import '../constants.dart';

class View3DPage extends StatefulWidget {
  final itemId;
  const View3DPage({super.key, this.itemId});
  

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
            src: getItem(widget.itemId)!['glb'].toString(),
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