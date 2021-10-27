import 'package:fire_service/Strings/strings.dart';
import 'package:fire_service/login/login.dart';
import "package:flutter/material.dart";

import 'login_unbording.dart';
import 'otp.dart';

class Replace extends StatefulWidget {
  const Replace({Key? key}) : super(key: key);

  @override
  _ReplaceState createState() => _ReplaceState();
}




class _ReplaceState extends State<Replace> {
  int currentIndex = 0;
  PageController controller= PageController(initialPage: 0);



  @override
  void initState() {
    controller = PageController(initialPage: 0);
    super.initState();
  }
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
        body: PageView(
        children: [
            Login(),
          OTP()
        ]),
    );
  }
}
