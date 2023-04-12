import 'dart:io';

import 'package:flutter/material.dart';
import 'package:untitled11/screens/welcome.dart';

import 'create_account.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = "LoginScreen";

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: Image.asset(
            "assets/images/img.png",
          ),
          leadingWidth: 100,
        actions: [
          IconButton(
            icon: Image.asset('assets/images/img_5.png',
              width: 100,
            ),
            onPressed: () => exit(0),
          ),
        ],
        // default is 56
          title: Container(
            width: 500,
          ),
          centerTitle: true, // like this!
          backgroundColor: Colors.white,
        ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            // Image.asset(
            //   "assets/images/main_bg.png",
            //   fit: BoxFit.fill,
            //   width: double.infinity,
            // ),
            Center(
              child: Text(
                """اداره التدريب\n كليه الدراسات العليا للبحوث الاحصائيه
""",
                style: TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: "الرقم الجامعى",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.blue)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.blue))),
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                  hintText: "كلمه المرور",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.blue)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.blue))),
            ),

            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(
                      context, WelcomeScreen.routeName);
                },
                child: Text('Login')),
            TextButton(
                onPressed: () {

                },
                child: Text("Don't Have An Account ?"))
          ],
        ),
      ),
    );
  }
}
