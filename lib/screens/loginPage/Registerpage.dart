import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class RegisterPage extends StatefulWidget {
  final VoidCallback showLoginPage;
  const RegisterPage({super.key, required this.showLoginPage});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmpasswordController = TextEditingController();

  Future signup() async {
    if (_passwordController.text.trim() ==
        _confirmpasswordController.text.trim()) {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: _usernameController.text.trim(),
          password: _passwordController.text.trim());
    }
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();

    super.dispose();
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
            "Bonjour Patron",
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
                  color: Colors.white12,
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: TextField(
                    controller: _usernameController,
                    style: TextStyle(color: HexColor("FFD078")),
                    cursorColor: HexColor("FFD078"),
                    decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.person,
                          color: HexColor("C00000"),
                        ),
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
                  color: Colors.white12,
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: TextField(
                    controller: _passwordController,
                    style: TextStyle(color: HexColor("FFD078")),
                    cursorColor: HexColor("FFD078"),
                    cursorErrorColor: Colors.red,
                    decoration: InputDecoration(
                      hintText: "password",
                      hintStyle: TextStyle(color: Colors.grey),
                      border: InputBorder.none,
                      suffixIcon: Icon(
                        Icons.lock,
                        color: HexColor("C00000"),
                      ),
                    ),
                  ),
                )),
          ),

          SizedBox(
            height: 20,
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Container(
                decoration: BoxDecoration(
                  color: Colors.white12,
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: TextField(
                    controller: _confirmpasswordController,
                    style: TextStyle(color: HexColor("FFD078")),
                    cursorColor: HexColor("FFD078"),
                    cursorErrorColor: Colors.red,
                    decoration: InputDecoration(
                      hintText: "confirm password",
                      hintStyle: TextStyle(color: Colors.grey),
                      border: InputBorder.none,
                      suffixIcon: Icon(
                        Icons.lock_reset,
                        color: HexColor("C00000"),
                      ),
                    ),
                  ),
                )),
          ),

          SizedBox(
            height: 20,
          ),

          //login in button

          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                // Frosted glass effect
                BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                  child: Container(
                    width: 200,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Colors.white.withOpacity(0.3),
                        width: 1.0,
                      ),
                    ),
                  ),
                ),
                // Elevated button on top of the frosted glass effect
                SizedBox(
                  width: 200,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                    ),
                    onPressed: () {
                      signup();
                      // Handle sign in button press
                    },
                    child: Text(
                      'create account',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),

          //forgot password

          //create account

          InkWell(
            onTap: widget.showLoginPage,
            child: RichText(
              text: TextSpan(children: <TextSpan>[
                TextSpan(text: "Already have an account? "),
                TextSpan(
                    text: "Login Now",
                    style: TextStyle(color: Colors.lightBlue))
              ]),
            ),
          ),
        ],
      ))),
    ]));
  }
}
