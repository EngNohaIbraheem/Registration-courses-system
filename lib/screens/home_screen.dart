import 'package:flutter/material.dart';

import 'login.dart';

class HomeScreenScreen extends StatefulWidget {
  static const String routeName = " HomeScreen";

  @override
  _HomeScreenScreenState createState() => _HomeScreenScreenState();
}

class _HomeScreenScreenState extends State<HomeScreenScreen> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('ادارة التدريب  كليه الدراسات العليا للبحوث الاحصائيه')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Image.asset(
              "assets/images/img.png",
            ),
            Text(
                """ كليه الدراسات العليا للبحوث الاحصائيه    \n    برنامج التسجيل فى دورات القبول"""),

            ElevatedButton(
              child: Text('تسجيل الدخول'),
              onPressed: () {
                // Validate the input fields here
                String email = _emailController.text;
                String password = _passwordController.text;
                // Do something with the email and password
              },
            ),
            ElevatedButton(
                onPressed: () {
                },
                child: Text('Create Account')),
            TextButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(
                      context, LoginScreen.routeName);
                },
                child: Text("I Have an Account"))
            // text:Text("هل تواجهه مشكله فى تسجيل الدخول ؟");
          ],
        ),
      ),
    );
  }
}
