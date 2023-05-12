import 'package:flutter/material.dart';

import 'go_to_payment.dart';
import 'login.dart';

class RegisterCourcse extends StatefulWidget {
  static const String routeName = " RegisterCourcse";

  @override
  _RegisterCourcseState createState() => _RegisterCourcseState();
}

class _RegisterCourcseState extends State<RegisterCourcse> {
  bool checkboxValue1 = true;
  bool checkboxValue2 = true;
  bool checkboxValue3 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('الكورسات '),
        // backgroundColor: Colors.white,
      ),

      drawer: Drawer(),
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //     title: Text('الكورسات ')),
      // body: SingleChildScrollView(
      //   padding: EdgeInsets.all(20),
      //   child: Column(
      //     children: [
      //       Text(
      //           """ اختبار دورات القبول فى الدبلومات """),
      //       SizedBox(height: 10,),
      //       Text(
      //           """ الاحصاء """),
      //       SizedBox(height: 10,),
      //       Text(
      //           """ الرياضه"""),
      //       SizedBox(height: 10,),
      //       Text(
      //           """ c++ """),
      //       SizedBox(height: 30,),
      //       Text(
      //           """يرجى الاطلاع على دليل الطالب لسنه 2023 """),
      //
      //       ElevatedButton(
      //         child: Text('التاكيد والذهاب للدفع'),
      //         onPressed: () {
      //           // Validate the input fields here
      //           // Do something with the email and password
      //         },
      //       ),
      //       // text:Text("هل تواجهه مشكله فى تسجيل الدخول ؟");
      //     ],
      //   ),
      // ),
      body: Column(
        children: <Widget>[
          const Divider(height: 20),
          Text(""" اختبار دورات القبول فى الدبلومات """),
          const Divider(height: 0),
          CheckboxListTile(
            value: checkboxValue1,
            onChanged: (bool? value) {
              setState(() {
                checkboxValue1 = value!;
              });
            },
            title: const Text('c++'),
            subtitle: const Text('لطلاب دبلومه علوم الحاسب ونظم ومعلومات فقط '),
          ),
          const Divider(height: 0),
          CheckboxListTile(
            value: checkboxValue2,
            onChanged: (bool? value) {
              setState(() {
                checkboxValue2 = value!;
              });
            },
            title: const Text('الاحصاء '),
            subtitle: const Text('لطلاب دبلومه الاحصاء فقط '),
          ),
          const Divider(height: 0),
          CheckboxListTile(
            value: checkboxValue3,
            onChanged: (bool? value) {
              setState(() {
                checkboxValue3 = value!;
              });
            },
            title: const Text('الرياضه '),
            subtitle: const Text("لجميع الطلاب "),
            isThreeLine: true,
          ),
          const Divider(height: 0),
          const Divider(height: 20),
          Text(""" ايرجى الاطلاع على دليل الطالب لسنه 2023 """),
          const Divider(height: 20),
          ElevatedButton(
            child: Text('التاكيد والذهاب للدفع'),
            onPressed: () {
              Navigator.pushReplacementNamed(context, GoToPayment.routeName);

              // Validate the input fields here
              // Do something with the email and password
            },
          ),
        ],
      ),
    );
  }
}
