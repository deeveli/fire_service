import 'package:fire_service/Strings/strings.dart';
import 'package:fire_service/bg/home.dart';
import 'package:firebase_core/firebase_core.dart';
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

class OTP extends StatefulWidget {
  const OTP({Key? key}) : super(key: key);

  @override

  _OTPState createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  int start = 30;
  bool wait = false;
  final buttonIcon = Icons.send;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    final otp = GoogleFonts.montserrat(fontStyle:FontStyle.normal, fontSize: 18, fontWeight: FontWeight.w400, color: Colors.black);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xfff7f6fb),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 24, horizontal: 32),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Verification',
                style: boldRed,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Enter One Time Password code",
                style: smallBlack,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        textFieldOTP(first: true, last: false),
                        textFieldOTP(first: false, last: false),
                        textFieldOTP(first: false, last: false),
                        textFieldOTP(first: false, last: true),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text.rich(
                TextSpan(
                  text: "Didn't you receive any code? ",
                  style: tinyGrey,
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Resend',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                        )),
                    // can add more TextSpans here...
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              FlatButton(onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_)=> Home()));
              },
                child: Text('Next', style: buttonWhite,),
                color: red,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(1000)
                ),),

            ],
          ),
        ),
      ),
    );
  }

  Widget textFieldOTP({required bool first, last}) {
    return Container(
      height: 80,
      width: 60,
      child: AspectRatio(
        aspectRatio: 1.0,
        child: TextField(
          autofocus: true,
          onChanged: (value) {
            if (value.length == 1 && last == false) {
              FocusScope.of(context).nextFocus();
            }
            if (value.length == 0 && first == false) {
              FocusScope.of(context).previousFocus();
            }
          },
          showCursor: false,
          readOnly: false,
          textAlign: TextAlign.center,
          style: Red,
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            counter: Offstage(),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width:1, color: grey),
                borderRadius: BorderRadius.circular(10)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: blue),
                borderRadius: BorderRadius.circular(10)),
          ),
        ),
      ),
    );
  }
}
//       body: Center(
//         child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//       //   Container(
//       //   padding: const EdgeInsets.only(left: 20, right: 20),
//       //   child: OTPTextField(
//       //     length: 4,
//       //     width: width,
//       //     fieldWidth: 58,
//       //     otpFieldStyle: OtpFieldStyle(
//       //       backgroundColor: whiteColor,
//       //       // borderColor: blueColor,
//       //       enabledBorderColor: blueColor,
//       //       disabledBorderColor: Colors.black38,
//       //     ),
//       //     style: otp,
//       //     textFieldAlignment: MainAxisAlignment.spaceAround,
//       //     fieldStyle: FieldStyle.underline,
//       //     onCompleted: (pin) {
//       //       print("Completed: " + pin);
//       //     },
//       //   ),
//       // ),
//       Text(
//         'Verification',
//         style: TextStyle(
//           fontSize: 22,
//           fontWeight: FontWeight.bold,
//         ),
//       ),
//       SizedBox(
//         height: 10,
//       ),
//       Text(
//         "Enter your OTP code number",
//         style: normalBlack,
//         textAlign: TextAlign.center,
//       ),
//       SizedBox(
//         height: 28,
//       ),
//       Container(
//         padding: EdgeInsets.all(28),
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(12),
//         ),
//         child: Column(
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 _textFieldOTP(first: true, last: false),
//                 _textFieldOTP(first: false, last: false),
//                 _textFieldOTP(first: false, last: false),
//                 _textFieldOTP(first: false, last: true),
//               ],
//             ),
//             SizedBox(
//               height: 22,
//             ),
//             // SizedBox(height: 40),
//             // RichText(
//             //     text: TextSpan(
//             //         children: [
//             //           TextSpan(
//             //               text: ("Send OTP again in "),
//             //               style: smallBlack),
//             //           TextSpan(
//             //               text: ("00:$start"),
//             //               style: smallBlack),
//             //           TextSpan(
//             //               text: (" seconds"),
//             //               style: smallBlack),
//             //         ]
//             //     )
//             // ),
//           ],
//         ),
//       ),
//     ),)
//     );
//   }
//
//   Widget _textFieldOTP({required bool first, last}) {
//     return Container(
//       height: 85,
//       child: AspectRatio(
//         aspectRatio: 1.0,
//         child: TextField(
//           autofocus: true,
//           onChanged: (value) {
//             if (value.length == 1 && last == false) {
//               FocusScope.of(context).nextFocus();
//             }
//             if (value.length == 0 && first == false) {
//               FocusScope.of(context).previousFocus();
//             }
//           },
//           showCursor: false,
//           readOnly: false,
//           textAlign: TextAlign.center,
//           style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//           keyboardType: TextInputType.number,
//           maxLength: 1,
//           decoration: InputDecoration(
//             counter: Offstage(),
//             enabledBorder: OutlineInputBorder(
//                 borderSide: BorderSide(width: 2, color: Colors.black12),
//                 borderRadius: BorderRadius.circular(12)),
//             focusedBorder: OutlineInputBorder(
//                 borderSide: BorderSide(width: 2, color: Colors.purple),
//                 borderRadius: BorderRadius.circular(12)),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
