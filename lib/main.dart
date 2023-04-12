import 'package:flutter/material.dart';
import 'package:untitled11/screens/courses_payment.dart';
import 'package:untitled11/screens/create_account.dart';
import 'package:untitled11/screens/home_screen.dart';
import 'package:untitled11/screens/login.dart';
import 'package:untitled11/screens/presonal_data.dart';
import 'package:untitled11/screens/registe_data.dart';
import 'package:untitled11/screens/welcome.dart';
import 'package:untitled11/splash_screen.dart';

void main() async {
  runApp(Myapplication());
}

class Myapplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: RegisteData.routeName,
      routes: {
        RegistrationScreen.routeName: (context) => RegistrationScreen(),
        LoginScreen.routeName: (context) => LoginScreen(),
        HomeScreenScreen.routeName: (context) => HomeScreenScreen(),
        SplashView.routeName: (context) => SplashView(),
        WelcomeScreen.routeName: (context) => WelcomeScreen(),
        RegisteData.routeName: (context) => RegisteData(),
        PersonalData.routeName: (context) => PersonalData(),
        CourcesAndPayment.routeName: (context) => CourcesAndPayment(),

      },
      debugShowCheckedModeBanner: false,
    );
  }
}
