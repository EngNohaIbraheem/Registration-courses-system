import 'package:flutter/material.dart';
import 'package:untitled11/screens/welcome.dart';

import 'courses_payment.dart';
import 'login.dart';

class PersonalData extends StatefulWidget {
  static const String routeName = "PersonalData";

  @override
  _PersonalDataState createState() => _PersonalDataState();
}

class _PersonalDataState extends State<PersonalData> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset(
          "assets/images/img.png",
        ),
        leadingWidth: 100, // default is 56
        title: Container(
          width: 500,
          child: Text(
            " البيانات الشخصيه ",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        centerTitle: true, // like this!
        backgroundColor: Colors.white,
      ),
      drawer: Drawer(),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                  labelText: 'الاسم بالكامل ',
                  hintText: 'الاسم بالكامل',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                      borderSide: BorderSide(color: Colors.blue)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                      borderSide: BorderSide(color: Colors.blue))),
            ),
            SizedBox(height: 3),
            TextFormField(
              decoration: InputDecoration(
                  hintText: "بطاقه الرقم القومى ",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: BorderSide(color: Colors.blue)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: BorderSide(color: Colors.blue))),
            ),
            SizedBox(height: 3),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        bottomLeft: Radius.circular(8),
                      ),
                    ),
                    child: Text(
                      "+91",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Mobile No."
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 3),
            TextFormField(
              decoration: InputDecoration(
                  hintText: "الايميل ",
                  prefixIcon: Icon(Icons.email),
                  hintStyle: TextStyle(color: Colors.grey),
                  filled: true,
                  fillColor: Colors.white70,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: BorderSide(color: Colors.blue)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: BorderSide(color: Colors.blue))),
            ),
            SizedBox(height: 3),
            TextFormField(
              decoration: InputDecoration(
                  hintText: "رقم الموبيل",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: BorderSide(color: Colors.blue)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: BorderSide(color: Colors.blue))),
            ),
            ElevatedButton(

              onPressed: () {
                Navigator.pushReplacementNamed(
                    context, CourcesAndPayment.routeName);
              },
              child: const Text(
                'الكورسات والدفع ',
                style: TextStyle(fontSize: 24),
              ),
            ),
            ElevatedButton(
                onPressed: (){
                  Navigator.pushReplacementNamed(
                      context, WelcomeScreen.routeName);
                },
                child: Icon(Icons.exit_to_app)),
          ],
        ),
      ),
    );
  }
}
