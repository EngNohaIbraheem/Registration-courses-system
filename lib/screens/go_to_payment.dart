import 'package:flutter/material.dart';
import 'package:untitled11/screens/registe_data.dart';

import 'courses_payment.dart';
import 'create_account.dart';

class GoToPayment extends StatefulWidget {
  static const String routeName = "GoToPayment";

  @override
  State<GoToPayment> createState() => _GoToPaymentState();
}

class _GoToPaymentState extends State<GoToPayment> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(
          title: Text(" تسجيل كود الدفع ",
          style:  TextStyle(
            fontWeight: FontWeight.bold,
          ),
          ),

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
                ElevatedButton(
                  child: Text('رقم فورى -----fawry ',
                    style: TextStyle(
                        color: Colors.black
                    ),
                  ),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      primary: Colors.grey,
                      padding: EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                      textStyle: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold)),
                ),
                SizedBox(height: 20,),
                ElevatedButton(
                  child: Text('صورة ايصال فورى ',
                    style: TextStyle(
                        color: Colors.black
                    ),
                  ),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      primary: Colors.grey,
                      padding: EdgeInsets.symmetric(horizontal: 90, vertical: 20),
                      textStyle: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold)),
                ),
                Center(
                  child: Text(
                    """ملحوظة\n صورة ايصال الدفع من فورى \n تكون نشطه فى حاله وجودرقم فورى الذى يتم اضافه من الكليه 
""",
                    style: TextStyle(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(
                          context, CourcesAndPayment.routeName);                  },
                    child: Text('حفظ')),
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
