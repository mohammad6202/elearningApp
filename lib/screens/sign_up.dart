import 'dart:math';

import 'package:elearning/Home.dart';
import 'package:elearning/shared/colors.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Sign_Up extends StatefulWidget {
  const Sign_Up({super.key});

  @override
  State<Sign_Up> createState() => _Sign_UpState();
}

class _Sign_UpState extends State<Sign_Up> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.appBarColor,
        centerTitle: true,
        title: Text("Sign Up Page"),
      ),
      body: Column(
        children: [
          Divider(
            height: 20,
          ),
          Text("Hello"),
          Divider(
            height: 100,
          ),
          Text("Email"),
          TextField(
            controller: email,
          ),
          Divider(
            height: 25,
          ),
          Text("Password"),
          TextField(
            controller: password,
          ),
          Divider(
            height: 25,
          ),
          TextButton(
              onPressed: () async {
                try {
                  var authenticationObject = FirebaseAuth.instance;
                  UserCredential myUser =
                      await authenticationObject.createUserWithEmailAndPassword(
                          email: email.text, password: password.text);
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Added Successfully :)")));
                } catch (e) {
                  // print("${e.toString()} Hello ");
                  // showDialog(
                  //     context: context,
                  //     builder: ((context) {
                  //       return AlertDialog(
                  //         content: Text("Sorry What Are You Doing"),
                  //       );
                  //     }));
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Sorry There is An Error :(")));
                }
              },
              child: Text("Sign up"))
        ],
      ),
    );
  }
}
