import 'package:flutter/material.dart';

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
            child: Center(
                child: Column(
      children: [
        SizedBox(
          height: 30,
        ),
        Text(
          "ZXW",
          style: TextStyle(fontSize: 30),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Welcome again",
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(
          height: 40,
        ),
        Container(width: 300, child: TextField()),
        SizedBox(
          height: 30,
        ),
        Container(width: 300, child: TextField()),
        SizedBox(
          height: 10,
        ),
        Text(
          "forgot password?",
          style: TextStyle(color: Colors.lightBlue),
        ),
        SizedBox(
          height: 10,
        ),
        Text("Create account", style: TextStyle(color: Colors.lightBlue)),
      ],
    ))));
  }
}
