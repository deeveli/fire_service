import 'package:fire_service/bg/home.dart';
import 'package:fire_service/test/testpage.dart';
import 'package:flutter/material.dart';


class TestColor extends StatefulWidget {
  const TestColor({Key? key}) : super(key: key);

  @override
  State<TestColor> createState() => _TestColorState();
}

class _TestColorState extends State<TestColor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          // rest.foo()
              Container(child: Center(child: Home()))
    );
  }
}
