import 'package:flutter/material.dart';
import 'product.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Featured',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Expanded(
                      child: GridView.count(
                        crossAxisCount: 2,
                        children: List.generate(9, (index) {
                          return Padding(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: GestureDetector(
                                    onTap: () => {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const ProductPage(),
                                        ),
                                      )
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Colors.black,
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20))),
                                      child: Center(
                                        // Add Image sunglasses.png from assets folder
                                        child: Image(image: AssetImage('assets/sunglasses.png'))


                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 10,
                                    top: 5,
                                  ),
                                  child: Text("Sunglasses"),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 10,
                                    top: 5,
                                  ),
                                  child: Text("\$10"),
                                ),
                              ],
                            ),
                          );
                        }),
                      ),
                    ),
                  ],
                ))));
  }
}
