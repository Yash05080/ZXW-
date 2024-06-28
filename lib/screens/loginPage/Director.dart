import 'package:e_commerce/screens/Home/homepage.dart';
import 'package:e_commerce/screens/loginPage/loginPage.dart';

import 'package:e_commerce/screens/nav_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MainDirector extends StatefulWidget {
  const MainDirector({super.key});

  @override
  State<MainDirector> createState() => _MainDirectorState();
}

class _MainDirectorState extends State<MainDirector> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return bottomNavigationBar();
          } else {
            return LoginPage();
          }
        },
      ),
    );
  }
}
