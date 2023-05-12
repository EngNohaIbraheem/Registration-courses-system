import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class RegistrationScreen extends StatefulWidget {
  static const String routeName = "RegisterScreen";

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  final List<String> items3 = [
    'اكاديمى',
    'مهنى ',
    'تهيلى دكتوراه',
  ];
  String? selectedValue3;
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset(
          "assets/images/img.png",
        ),
        leadingWidth: 100,
        // default is 56

        title: Container(
          width: 500,
          child: Text(
            " اداره  التدريب ",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        centerTitle: true,
        // like this!
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Center(
                  child: Text(
                      " كليه الدراسات العليا للبحوث الاحصائيه \n (انشاء حساب طالب جديد ) ")),
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(
                  labelText: 'الاسم بالكامل ',
                  hintText: 'اكتب الاسم بالكامل',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
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
                controller: _emailController,
                validator: (value) {
                  if (value!.trim().isEmpty) {
                    return "Please enter email";
                  } //fsdjfdsfhsdkj
                  final bool emailValid = RegExp(
                          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                      .hasMatch(value);
                  if (emailValid == false) {
                    return "Please enter valid email";
                  }

                  return null;
                },
                decoration: InputDecoration(
                    hintText: "الايميل ",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: BorderSide(color: Colors.blue)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: BorderSide(color: Colors.blue))),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                validator: (value) {
                  if (value?.trim() == "") {
                    return "Please enter password";
                  }
                  return null;
                },
                decoration: InputDecoration(
                    hintText: "كلمه المرور",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Colors.blue)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
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
                    items: items3
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
                    value: selectedValue3,
                    onChanged: (value) {
                      setState(() {
                        selectedValue3 = value as String;
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
                        selectedValue1 = value as String;
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
                        selectedValue2 = value as String;
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
              ElevatedButton(
                child: Text('تسجيل'),
                onPressed: () {
                  CreatAccount();
                  Navigator.pushReplacementNamed(
                      context, LoginScreen.routeName);
                },
              ),
              TextButton(onPressed: () {

              }, child: Text("I Have an Account"))
            ],
          ),
        ),
      ),
    );
  }

  void CreatAccount() async {
    if (_formKey.currentState!.validate()) {
      try {
        final credential =
            await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: _emailController.text,
          password: _passwordController.text,
        );
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          print('The password provided is too weak.');
        } else if (e.code == 'email-already-in-use') {
          print('The account already exists for that email.');
        }
      } catch (e) {
        print(e);
      }
    }
  }
}
