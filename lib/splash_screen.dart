import 'dart:async';

import 'package:flutter/material.dart';
import 'package:untitled11/screens/create_account.dart';

class SplashView extends StatefulWidget {
  static const routeName = "initial";

  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

  @override
  void initState() {
    Timer(const Duration(seconds: 10), () {
      Navigator.of(context).pushReplacementNamed(RegistrationScreen.routeName, );
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return Stack(
      children: [
        Container(
          color: Colors.white,
          // child: Image.asset(
          //   "assets/images/img.png",
          //   width: double.infinity,
          //   height: double.infinity,
          //   fit: BoxFit.cover,
          // ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Image.asset("assets/images/img.png"),
          ),
        )
      ],
    );
  }
}