import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:untitled11/screens/courses_payment.dart';
import 'package:untitled11/screens/create_account.dart';
import 'package:untitled11/screens/go_to_payment.dart';
import 'package:untitled11/screens/home_screen.dart';
import 'package:untitled11/screens/login.dart';
import 'package:untitled11/screens/mangement_traning.dart';
import 'package:untitled11/screens/presonal_data.dart';
import 'package:untitled11/screens/registe_cources.dart';
import 'package:untitled11/screens/registe_data.dart';
import 'package:untitled11/screens/test_screen.dart';
import 'package:untitled11/screens/welcome.dart';
import 'package:untitled11/splash_screen.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(Myapplication());
}

class Myapplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: SplashView.routeName,
      routes: {
        SplashView.routeName: (context) => SplashView(),
        RegistrationScreen.routeName: (context) => RegistrationScreen(),
        LoginScreen.routeName: (context) => LoginScreen(),
        HomeScreenScreen.routeName: (context) => HomeScreenScreen(),
        WelcomeScreen.routeName: (context) => WelcomeScreen(),
        RegisteData.routeName: (context) => RegisteData(),
        PersonalData.routeName: (context) => PersonalData(),
        CourcesAndPayment.routeName: (context) => CourcesAndPayment(),
        MangemenTraning.routeName: (context) => MangemenTraning(),
        GoToPayment.routeName: (context) => GoToPayment(),
        RegisterCourcse.routeName: (context) => RegisterCourcse(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
