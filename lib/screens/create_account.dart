import 'package:flutter/material.dart';

import 'login.dart';

class RegistrationScreen extends StatefulWidget {
  static const String routeName = "RegisterScreen";

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final List<String> items = [
    'اكاديمى',
    'مهنى ',
    'تهيلى دكتوراه',
  ];
  String? selectedValue;
  final List<String> items1 = [
    'دبلوم اكاديمى',
    'دبلوم مهنى  ',
    'علوم بيانات',
  ];
  String? selectedValue1;

  final List<String> items2 = [
    'الاحصاء ',
    'الاحصاء الحيوى  ',
    'علوم الحاسب ',
    'نظم وتكنولوجيا',
  ];
  String? selectedValue2;
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
            " اداره  التدريب ",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        centerTitle: true, // like this!
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Center(
                child: Text(
                    " كليه الدراسات العليا للبحوث الاحصائيه \n (انشاء حساب طالب جديد ) ")),
            TextFormField(
              decoration: InputDecoration(
                  hintText: "الاسم كامل ",
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
                  hintText: "رقم البطاقه",
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
            SizedBox(height: 3),
            TextFormField(
              decoration: InputDecoration(
                  hintText: "الايميل ",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: BorderSide(color: Colors.blue)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: BorderSide(color: Colors.blue))),
            ),
            Row(
              children: [
                DropdownButton(
                  hint: Text(
                    'اختر....',
                    style: TextStyle(
                      fontSize: 14,
                      color: Theme.of(context).hintColor,
                    ),
                  ),
                  items: items
                      .map((item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                              item,
                              style: const TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ))
                      .toList(),
                  value: selectedValue,
                  onChanged: (value) {
                    setState(() {
                      selectedValue = value as String;
                    });
                  },
                  // buttonStyleData: const ButtonStyleData(
                  //   height: 40,
                  //   width: 140,
                  // ),
                  // menuItemStyleData: const MenuItemStyleData(
                  //   height: 40,
                  // ),
                ),
                SizedBox(
                  width: 80,
                ),
                Text("برنامج اكاديمى"),
              ],
            ),
            Row(
              children: [
                DropdownButton(
                  hint: Text(
                    'اختر....',
                    style: TextStyle(
                      fontSize: 14,
                      color: Theme.of(context).hintColor,
                    ),
                  ),
                  items: items1
                      .map((item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                              item,
                              style: const TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ))
                      .toList(),
                  value: selectedValue1,
                  onChanged: (value) {
                    setState(() {
                      selectedValue = value as String;
                    });
                  },
                  // buttonStyleData: const ButtonStyleData(
                  //   height: 40,
                  //   width: 140,
                  // ),
                  // menuItemStyleData: const MenuItemStyleData(
                  //   height: 40,
                  // ),
                ),
                SizedBox(
                  width: 80,
                ),
                Text("الدرجه العلميه"),
              ],
            ),
            Row(
              children: [
                DropdownButton(
                  hint: Text(
                    'اختر....',
                    style: TextStyle(
                      fontSize: 14,
                      color: Theme.of(context).hintColor,
                    ),
                  ),
                  items: items2
                      .map((item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                              item,
                              style: const TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ))
                      .toList(),
                  value: selectedValue2,
                  onChanged: (value) {
                    setState(() {
                      selectedValue = value as String;
                    });
                  },
                  // buttonStyleData: const ButtonStyleData(
                  //   height: 40,
                  //   width: 140,
                  // ),
                  // menuItemStyleData: const MenuItemStyleData(
                  //   height: 40,
                  // ),
                ),
                SizedBox(
                  width: 80,
                ),
                Text("القسم العلمى"),
              ],
            ),
            ElevatedButton(onPressed: () {
              Navigator.pushReplacementNamed(
                  context, LoginScreen.routeName);
            }, child: Text('Create Account')),
            TextButton(
                onPressed: () {

                },
                child: Text("I Have an Account"))
          ],
        ),
      ),
    );
  }
}
