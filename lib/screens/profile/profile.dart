import 'package:e_commerce/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              // Handle settings tap
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Profile Section
            Container(
              padding: EdgeInsets.all(20),
              color: kprimarycolor,
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/profile.JPG'),
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'John Doe',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'john.doe@example.com',
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Account Options
            ListTile(
              leading: Icon(Icons.shopping_bag),
              title: Text('My Orders'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Handle My Orders tap
              },
            ),
            Divider(height: 1),
            ListTile(
              leading: Icon(Icons.location_on),
              title: Text('My Address'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Handle My Address tap
              },
            ),
            Divider(height: 1),
            ListTile(
              leading: Icon(Icons.credit_card),
              title: Text('Payment Methods'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Handle Payment Methods tap
              },
            ),
            Divider(height: 1),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text('Wishlist'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Handle Wishlist tap
              },
            ),
            Divider(height: 1),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Account Settings'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Handle Account Settings tap
              },
            ),
            Divider(height: 1),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Notifications'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Handle Notifications tap
              },
            ),
            Divider(height: 1),

            // Logout Button
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ElevatedButton(
                onPressed: () {
                  // Handle logout
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.redAccent,
                  padding: EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: GestureDetector(
                  onTap: () {
                    FirebaseAuth.instance.signOut();
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.logout),
                      SizedBox(width: 10),
                      Text(
                        'Logout',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
      // body: Center(
      //   child: MaterialButton(
      //     onPressed: () {
      //       FirebaseAuth.instance.signOut();
      //     },
      //     color: Colors.red,
      //     child: Text("log out"),
      //   ),
      // ),
   
