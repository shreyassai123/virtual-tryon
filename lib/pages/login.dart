import 'package:flutter/material.dart';
import 'home.dart';
import 'package:flutter_svg/flutter_svg.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: 
    Scaffold(
      //background rgb(255, 163, 253)
        backgroundColor: Color(0xff6C63FF).withOpacity(0.25),
        body: SafeArea(
            child: Padding(
      padding: EdgeInsets.all(20),
      child: Column(children: [
        Text(
          'Virtual Try On',
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.w900,
          ),
        ),
        Expanded(
          child: SvgPicture.asset("assets/shopping.svg"),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            //change color to #6C63FF
            primary: Color(0xff6C63FF),
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          child: Text("LOGIN"),
          onPressed: () => {
            Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const HomePage()),
  )
          },
        )
      ], crossAxisAlignment: CrossAxisAlignment.stretch),
    ))));
  }
}
