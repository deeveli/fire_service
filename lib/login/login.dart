import 'dart:async';

import 'package:fire_service/Strings/strings.dart';
import 'package:fire_service/bg/home.dart';
import 'package:fire_service/models/user_model.dart';
import 'package:fire_service/login/otp.dart';
import 'package:fire_service/widgets/profile_picture.dart';
import 'package:fire_service/widgets/text_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';

import '../locator.dart';

class AuthClass {
  final FirebaseAuth _auth = FirebaseAuth.instance;
}

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
    final countryCode = GoogleFonts.montserrat(fontStyle:FontStyle.normal, fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black);
    final hintText = GoogleFonts.montserrat(fontStyle:FontStyle.normal, fontSize: 18, fontWeight: FontWeight.w400, color: Colors.black26);
    final inputText = GoogleFonts.montserrat(fontStyle:FontStyle.normal, fontSize: 18, fontWeight: FontWeight.w400, color: Colors.black);

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
                                  Text("Fire Service", style: titleBlack),
                                  Container(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Icon(Icons.call, color: red, size: 25,),
                                        SizedBox(width: 5),
                                        Text(appName, style: titleRed,),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                          ),
                          SizedBox(height: 60),
                          ProfilePicture(),
                          SizedBox(height: 10),
                          Text("Tap to change avatar", style: normalItalicBlack),
                          SizedBox(height: 40),
                          Container(
                            width: width*0.8,
                            height: 60,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: blue, style: BorderStyle.solid)
                            ),
                            child: Row(
                              children: [
                                // Padding(
                                //     padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                                //     child: IntlPhoneField(
                                //       initialCountryCode: 'GH',
                                //       initialValue: '+233',
                                //       onChanged: (phoneNumber){
                                //         setState((){
                                //           phone = phoneNumber.completeNumber;
                                //         });
                                //       },
                                //       // Text('+233', style: countryCode, textAlign: TextAlign.center,
                                //     )
                                // ),
                                TextFormField(
                                    keyboardType: TextInputType.number,
                                    style: inputText,
                                    decoration: InputDecoration(

                                      border: InputBorder.none,
                                      hintText: "Enter Phone Number",
                                      hintStyle: hintText,
                                      alignLabelWithHint: true,
                                      contentPadding:
                                      const EdgeInsets.fromLTRB(20, 20, 0, 18),
                                      // prefixIcon:
                                      suffixIcon: InkWell(
                                        onTap: wait?null: (){
                                          startTimer();
                                          setState((){
                                            start = 30;
                                            wait = true;
                                            // buttonIcon = Icon(Icons.send, color: Colors.black26);
                                          });
                                        },
                                        child: Padding(
                                            padding: const EdgeInsets.all(10),
                                            child: Icon(buttonIcon, color: wait? grey: red)
                                        ),
                                      ),
                                    )
                                ),
                              ],
                            ),
                          ),
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
                            verifyPhone();
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

  String verPhone = '';
  String phone = '';
  bool codeSent = false;

  Future<void> verifyPhone() async {
    try{
      await FirebaseAuth.instance.verifyPhoneNumber(
          phoneNumber: phone,
          verificationCompleted: (PhoneAuthCredential credential) async {
            await FirebaseAuth.instance.signInWithCredential(credential);
            final snackBar = SnackBar(content: Text('Welcome'));
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          verificationFailed: (FirebaseAuthException e){
            final snackBar = SnackBar(content: Text("{(e.message}"));
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          codeSent: (String verificationId, int? forceResendingToken) {
            setState((){
              codeSent = true;
              verPhone = verificationId;
            });
          },
          codeAutoRetrievalTimeout: (String verificationId) {
            setState(() {
              verPhone = verificationId;
            });
          },
          timeout: Duration(seconds: 60)
      );
    }catch(e){}
  }

  void startTimer(){
    const onsec = Duration(seconds: 1);
    Timer _timer = Timer.periodic(onsec, (timer){
      if(start ==0) {
        setState(() {
          timer.cancel();
          wait = false;
        });
      } else {
        setState(() {
          start--;
        });
      }
    });
  }

}

