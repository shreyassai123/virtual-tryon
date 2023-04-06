import 'package:flutter/material.dart';
import '../constants.dart';
import 'product.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Scaffold(
          backgroundColor: Color(0xff6C63FF).withOpacity(0.25),
          body: SafeArea(
              child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Featured',
                        style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      SizedBox(height: 30),
                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                          // children: List.generate(9, (index) {
                          //   return Padding(
                          //     padding: EdgeInsets.all(10),
                          //     child: Column(
                          //       crossAxisAlignment: CrossAxisAlignment.start,
                          //       children: [
                          //         Expanded(
                          //           child: GestureDetector(
                          //             onTap: () => {
                          //               Navigator.push(
                          //                 context,
                          //                 MaterialPageRoute(
                          //                   builder: (context) =>
                          //                       const ProductPage(),
                          //                 ),
                          //               )
                          //             },
                          //             child: Container(
                          //               decoration: BoxDecoration(
                          //                 border: Border.all(
                          //                   color: Colors.black,
                          //                 ),
                          //                 borderRadius: BorderRadius.all(
                          //                   Radius.circular(20),
                          //                 ),
                          //               ),
                          //               child: Column(
                          //                 children: [
                          //                   Expanded(
                          //                     child: Center(
                          //                       // Add Image sunglasses.png from assets folder
                          //                       child: Image(
                          //                         image: AssetImage(
                          //                             'assets/sunglasses.png'),
                          //                       ),
                          //                     ),
                          //                   ),
                          //                   Expanded(
                          //                     child: Container(
                          //                       color: Colors.white,
                          //                       child: Text(
                          //                         'Sunglasses',
                          //                         style: TextStyle(
                          //                           fontSize: 20,
                          //                           fontWeight: FontWeight.w700,
                          //                         ),
                          //                       ),
                          //                     ),
                          //                   )
                          //                 ],
                          //               ),
                          //             ),
                          //           ),
                          //         ),
                          //         // Padding(
                          //         //   padding: EdgeInsets.only(
                          //         //     left: 10,
                          //         //     top: 5,
                          //         //   ),
                          //         //   child: Text("Sunglasses"),
                          //         // ),
                          //         // Padding(
                          //         //   padding: EdgeInsets.only(
                          //         //     left: 10,
                          //         //     top: 5,
                          //         //   ),
                          //         //   child: Text("\$10"),
                          //         // ),
                          //       ],
                          //     ),
                          //   );
                          // }),
                          children: [
                            ItemCard(itemId: 'sunglass'),
                            ItemCard(itemId: 'shoe'),
                            ItemCard(itemId: 'helmet'),
                            ItemCard(itemId: 'shoe')
                          ]
                          ),
                        ),
                      ),
                    ],
                  )))),
    );
  }
}

class ItemCard extends StatelessWidget {
  final itemId;
  const ItemCard({
    Key? key,
    @required this.itemId
  }) : super(key: key,);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() => {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductPage(
              itemId: itemId,
            ),
          ),
        )
      }),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          //border radius of 20
          decoration: BoxDecoration(
    
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            color: Colors.white,
            boxShadow: [
                BoxShadow(
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                  color: Colors.black.withOpacity(0.25),
                ),
              ],
    
          ),
          child: Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              color: Color(0xff6C63FF).withOpacity(0.1),
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: Column(children: [
              Expanded(
                flex: 2,
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Center(
                    child: Image(
                      image: AssetImage(getItem(itemId)!['image'].toString()),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  
                  width: double.infinity,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 10,
                          top: 5,
                        ),
                        child: Text(getItem(itemId)!['name'].toString()),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 10,
                          top: 5,
                        ),
                        child: Text("\$"+getItem(itemId)!['price'].toString()),
                      ),
                    ],
                  ),
                ),
              )
            ],),
          ),
        ),
      ),
    );
  }
}
