import 'package:flutter/material.dart';
import 'home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: EdgeInsets.all(20),
      child: Column(children: [
        Text(
          'Virtual Try On',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w900,
          ),
        ),
        Expanded(
          child: Container(),
        ),
        ElevatedButton(
          child: Text("LOGIN"),
          onPressed: () => {
            Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const HomePage()),
  )
          },
        )
      ], crossAxisAlignment: CrossAxisAlignment.stretch),
    )));
  }
}
