import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Product',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Expanded(
                child: ModelViewer(
                  src:
                      'https://modelviewer.dev/shared-assets/models/Astronaut.glb',
                  alt: "A 3D model of an astronaut",
                  ar: true,
                  autoRotate: true,
                  cameraControls: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
