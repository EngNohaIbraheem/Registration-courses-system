import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:untitled11/screens/welcome.dart';

import 'create_account.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = "LoginScreen";

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

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
        child: Form(
          key: _formKey,
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
                controller: _emailController,
                decoration: InputDecoration(
                    hintText: " الاميل الجامعى",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Colors.blue)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Colors.blue))),
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: _passwordController,
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
                    LoginButton();
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
      ),
    );
  }
  void LoginButton() async {
    if (_formKey.currentState!.validate()) {
      try {
        final credential =
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: _emailController.text,
          password: _passwordController.text,
        );
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          print('The password provided is too weak.');
        } else if (e.code == 'email-already-in-use') {
          print('The account already exists for that email.');
        }
      } catch (e) {
        print(e);
      }
    }
  }

}
