import 'package:flutter/material.dart';
import 'package:untitled11/screens/registe_data.dart';

import 'create_account.dart';

class WelcomeScreen extends StatefulWidget {
  static const String routeName = "welcomeScreen";

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(
            //  backgroundColor: Colors.white,

            ),
        drawer: Drawer(),
        backgroundColor: Colors.white,
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  "assets/images/img.png",
                  width: 300,
                  height: 300,
                ),
                Center(
                  child: Text(
                    """اداره التدريب\n كليه الدراسات العليا للبحوث الاحصائيه \n يمكنك الان التسجيل فى دورات القبول عبر التطبيق بكل سهول
""",
                    style: TextStyle(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(
                          context, RegisteData.routeName);                  },
                    child: Text('الذهاب الى صفحه التسجيل')),
                TextButton(
                    onPressed: () {

                    },
                    child: Text("مرحباااااااااااااااا"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
