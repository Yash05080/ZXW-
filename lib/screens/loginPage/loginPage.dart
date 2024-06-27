import 'package:e_commerce/screens/loginPage/loginbutton.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscureText = true;

  void _toggleVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
              image: AssetImage("assets/images/wardrobe.jpeg"),
              fit: BoxFit.cover,
              opacity: 0.4,
            )),
      ),
      SafeArea(
          child: Center(
              child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          //brand name
          Text(
            "ZXW",
            style: TextStyle(fontSize: 40, color: Colors.red),
          ),
          SizedBox(
            height: 10,
          ),

          //welcome text
          Text(
            "Welcome again",
            style: TextStyle(fontSize: 20, color: Colors.white70),
          ),
          SizedBox(
            height: 40,
          ),

          //Username textfield

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: TextField(
                    decoration: InputDecoration(
                        suffixIcon: Icon(Icons.person),
                        hintText: "username",
                        hintStyle: TextStyle(color: Colors.grey),
                        border: InputBorder.none),
                  ),
                )),
          ),
          SizedBox(
            height: 30,
          ),

          // password textfield

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: TextField(
                    obscureText: _obscureText,
                    decoration: InputDecoration(
                      hintText: "password",
                      hintStyle: TextStyle(color: Colors.grey),
                      border: InputBorder.none,
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscureText
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                        onPressed: _toggleVisibility,
                      ),
                    ),
                  ),
                )),
          ),

          SizedBox(
            height: 20,
          ),

          //login in button

          FrostedGlassButton(),
          SizedBox(
            height: 10,
          ),

          //forgot password

          Text(
            "forgot password?",
            style: TextStyle(color: Colors.lightBlue),
          ),
          SizedBox(
            height: 10,
          ),

          //create account

          Text("Create account", style: TextStyle(color: Colors.lightBlue)),
        ],
      ))),
    ]));
  }
}
