import 'package:flutter/material.dart';
import 'package:untitled11/screens/registe_data.dart';

import 'create_account.dart';
import 'go_to_payment.dart';

class MangemenTraning extends StatefulWidget {
  static const String routeName = "MangemenTraning";

  @override
  State<MangemenTraning> createState() => _MangemenTraningState();
}

class _MangemenTraningState extends State<MangemenTraning> {
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
                    """اداره التدريب\n كليه الدراسات العليا للبحوث الاحصائيه
""",
                    style: TextStyle(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 20,),
                Text(
                  """تم تسجيل طلبك \n سيتم ارسال كود الدفع \n قريبا
""",
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),

                ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(
                          context, GoToPayment.routeName);                  },
                    child: Text('تسجيل كود الدفع ')),
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
