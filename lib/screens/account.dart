import 'dart:async';

import 'package:adobe_xd/page_link.dart';
import 'package:fire_service/Strings/strings.dart';
import 'package:fire_service/bg/alert_bg.dart';
import 'package:fire_service/login/otp.dart';
import 'package:fire_service/widgets/app_bar.dart';
import 'package:fire_service/widgets/app_bar_accounts.dart';
import 'package:fire_service/widgets/bottom_bar.dart';
import 'package:fire_service/widgets/bottom_bar_accounts.dart';
import 'package:fire_service/widgets/dot_indicator.dart';
import 'package:fire_service/widgets/menu_drawer.dart';
import 'package:fire_service/widgets/name_texfield.dart';
import 'package:fire_service/widgets/profile_picture.dart';
import 'package:fire_service/widgets/sos_button.dart';
import 'package:fire_service/widgets/text_field.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
}

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override

  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  int start = 30;
  bool wait = false;
  final buttonIcon = Icons.send;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      drawer: MenuDrawer(),
      backgroundColor: Colors.white,
      body: Stack(
          children: <Widget>[
            AppBarNavAccount(),
            Center(
              child: Container(
                width: width,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ProfilePicture(),
                      SizedBox(height: 10),
                      Text("Tap to change avatar", style: normalItalicBlack),
                      SizedBox(height: 30),
                      Text("Name", style: nameField, textAlign: TextAlign.center,),
                      SizedBox(height: 5),
                      NameField(),
                      SizedBox(height: 25),
                      Text("Phone Number", style: phoneField, textAlign: TextAlign.center,),
                      SizedBox(height: 5),
                      // TEXTField(),
                      SizedBox(height: 20),
                      Container(
                          width: width*0.70,
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 1,
                                  color: Colors.black26,
                                ),
                              ),
                              SizedBox(width: 10),
                              Container(
                                  width: width*0.6,
                                  child: Text("Tap to change name/phone number",
                                    style: normalItalicBlack,
                                    textAlign: TextAlign.center,) ),
                              SizedBox(width: 10),
                              Expanded(
                                child: Container(
                                  height: 1,
                                  color: Colors.black26,
                                ),
                              ),
                            ],
                          )
                      ),
                    ],
                  ),
                ),
              ),
            ),
          BottomBarAccount(),
      ]),
    );
  }


}
