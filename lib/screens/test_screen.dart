import 'package:dropdown_button2/src/dropdown_button2.dart';
import 'package:flutter/material.dart';

class TestScreen extends StatefulWidget {
  static const String routeName = "TestScreen";

  @override
  State<TestScreen> createState() => _TestScreeneState();
}

class _TestScreeneState extends State<TestScreen> {
  String selectval = "Tokyo";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Dropdown Button in Flutter"),
            backgroundColor: Colors.redAccent
        ),
        body: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(20),
            child: Column(
                children: [
                  DropdownButton(
                    value: selectval,
                    items: [
                      DropdownMenuItem(
                          child: Text("New York"),
                          value: "New York"
                      ),
                      DropdownMenuItem(
                        child: Text("Tokyo"),
                        value: "Tokyo",
                      )
                    ],
                    onChanged: (value){
                      setState(() {
                        selectval = value.toString();
                      });
                    },
                  ),
                ]
            )
        )
    );
  }
}
