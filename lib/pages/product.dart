import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';
import 'package:virtual_tryon/constants.dart';
import 'package:virtual_tryon/pages/3dView.dart';
import 'package:virtual_tryon/pages/helmentArView.dart';
import 'arView.dart';

class ProductPage extends StatefulWidget {
  final itemId;
  const ProductPage({super.key, this.itemId});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {

  

  @override
  Widget build(BuildContext context) {
    
    return Container(
      color: Color(0xff6C63FF).withOpacity(0.25),
      child: Scaffold(
          body: SafeArea(
            child: Padding(
                padding: const EdgeInsets.all(20),
                child: SingleChildScrollView(
                    child: Column(
                  children: [
                    Image(image: AssetImage(getItem(widget.itemId)!['image'].toString())),
                    Row(children: [
                      Text(
                      getItem(widget.itemId)!['name'].toString(),
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Spacer(),
                    Text(
                      '\$'+getItem(widget.itemId)!['price'].toString(),
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    ]),
                    SizedBox(height: 20,),
                    Text(
                      getItem(widget.itemId)!['description'].toString(),
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    
                    ElevatedButton(
                      child: Text("View in 3D"),
                      onPressed: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => View3DPage(itemId: widget.itemId)),
                        )
                      },
                    ),

                    ElevatedButton(
                      child: Text("View in AR"),
                      onPressed: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ARViewPage(itemId: widget.itemId,)),
                        )
                      },
                    ),
                  ],
                ))),
          ),
      ),
    );
  }
}
