import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    bool? ischecked = false;
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 238),
              child: Container(
                padding: EdgeInsets.only(left: 20, right: 143),
                height: 44,
                //width: 251,
                child: Text('Welcome Back',
                    textAlign: TextAlign.left,
                    style:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 50, left: 20, right: 21),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                        hintText: 'Email',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8))),
                  ),
                  Padding(padding: EdgeInsets.only(top: 12)),
                  TextField(
                    decoration: InputDecoration(
                        hintText: 'Password',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8))),
                  ),
                  Padding(padding: EdgeInsets.only(top: 12)),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Checkbox(
                    value: ischecked,
                    onChanged: (newbool) {
                      setState() {
                        ischecked = newbool;
                      }
                    },
                  ),
                  Text(
                    'Remember me',
                    style: TextStyle(fontSize: 12),
                  ),
                  Padding(
                      padding: EdgeInsets.only(
                    left: 90,
                  )),
                  Text(
                    'Forgot password?',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                child: TextFormField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: 'Sign In',
                    hintStyle: TextStyle(fontSize: 20, color: Colors.white),
                    border: new OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    fillColor: Colors.deepPurple.shade600,
                    filled: true,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Text('Continue by using',
                  textAlign: TextAlign.center,
                  style:
                      TextStyle(fontSize: 10, fontWeight: FontWeight.normal)),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 145),
              child: Container(
                child: Row(
                  children: [
                    Image.asset(
                      "assets/google.png",
                      height: 50,
                      width: 50,
                    ),
                    Padding(padding: EdgeInsets.only(left: 1)),
                    Image.asset(
                      "assets/facebook.png",
                      height: 50,
                      width: 50,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 100),
              child: Container(
                child: Row(
                  children: [
                    Text(
                      'Create an account?',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 12, fontWeight: FontWeight.normal),
                    ),
                    Text(
                      'Sign Up',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
