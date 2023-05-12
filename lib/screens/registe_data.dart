import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled11/screens/presonal_data.dart';

import 'courses_payment.dart';
import 'mangement_traning.dart';

class RegisteData extends StatefulWidget {
  static const String routeName = "RegisteData";

  @override
  State<RegisteData> createState() => _RegisteDataState();
}

class _RegisteDataState extends State<RegisteData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,

          leading: FloatingActionButton(
            // backgroundColor: Colors.amberAccent,
            onPressed: () {},
            child: Icon(
              Icons.account_circle_rounded,
              size: 50,
              color: Colors.black,
            ),
          ),
          // Icon(Icons.account_circle_rounded),
          leadingWidth: 100,
          title: Text(
            ' اسم الطالب',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                child: Text('البيانات الشخصيه ',
                style: TextStyle(
                  color: Colors.black
                ),
                ),
                onPressed: () {
                  Navigator.pushReplacementNamed(
                      context, PersonalData.routeName);
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.grey,
                    padding: EdgeInsets.symmetric(horizontal: 150, vertical: 20),
                    textStyle: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold)),
              ),
              ElevatedButton(
                child: Text('الكورسات والدفع ',
                  style: TextStyle(
                      color: Colors.black
                  ),
                ),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,

                    padding: EdgeInsets.symmetric(horizontal: 150, vertical: 20),
                    textStyle: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold)),
              ),
              ElevatedButton(
                child: Text('استماره التقديم ',
                  style: TextStyle(
                      color: Colors.black
                  ),
                ),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    primary: Colors.grey,
                    padding: EdgeInsets.symmetric(horizontal: 150, vertical: 20),
                    textStyle: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold)),
              ),
              ElevatedButton(
                child: Text('اداره الاشعارات ',
                  style: TextStyle(
                      color: Colors.black
                  ),
                ),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 150, vertical: 20),
                    textStyle: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold)),
              ),
              ElevatedButton(
                child: Text('موقع الكليه على الخريطه ',
                  style: TextStyle(
                      color: Colors.black
                  ),
                ),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    primary: Colors.grey,
                    padding: EdgeInsets.symmetric(horizontal: 120, vertical: 20),
                    textStyle: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold)),
              ),
              ElevatedButton(
                child: Text('الدعم الفنى ',
                  style: TextStyle(
                      color: Colors.black
                  ),
                ),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 150, vertical: 20),
                    textStyle: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold)),
              ),

              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(
                      context, MangemenTraning.routeName);
                },
                child: const Text(
                  'تسجيل الخروج  ',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              InkWell(
                  onTap: (){
                    Navigator.pushReplacementNamed(
                        context, MangemenTraning.routeName);
                  },
                  child: Icon(Icons.exit_to_app)),
            ],
          ),
        ));
  }
}
