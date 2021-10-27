import 'dart:async';

import 'package:fire_service/Strings/strings.dart';
import 'package:fire_service/bg/home.dart';
import 'package:fire_service/models/user_model.dart';
import 'package:fire_service/login/otp.dart';
import 'package:fire_service/widgets/profile_picture.dart';
import 'package:fire_service/widgets/text_field.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';

import '../locator.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
}

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override

  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  int start = 30;
  bool wait = false;
  final buttonIcon = Icons.send;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;



    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Column(
                      children: [
                        Container(
                            width: width*0.70,
                            child: Column(
                              children: [
                                // Text("National", style: bold_blue),
                                // Text("Fire Service", style: bold_blue),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    // crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Icon(Icons.call, color: const Color(0xffff365d), size: 30,),
                                      SizedBox(width: 5),
                                      Text(appName, style: bold_red,),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 10),
                              ],
                            )
                        ),
                        SizedBox(height: 60),
                        ProfilePicture(),
                        SizedBox(height: 10),
                        Text("Tap to change avatar", style: normalItalicBlack),
                        SizedBox(height: 40),
                        TEXTField(),
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
                                Text("Enter phone number to continue", style: normalItalicBlack),
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
                        SizedBox(height: 20),
                        FlatButton(onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_)=> OTP()));
                        },
                          child: Text('Next', style: buttonWhite,),
                          color: red,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(1000)
                          ),),
                      ],
                    ),
                  ),
                ],
              ),
            ]
          ),
        ),
      ),
    );
  }


}
