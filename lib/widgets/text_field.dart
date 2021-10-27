import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TEXTField extends StatefulWidget {
  const TEXTField({Key? key}) : super(key: key);

  @override
  State<TEXTField> createState() => _TEXTFieldState();
}

class _TEXTFieldState extends State<TEXTField> {
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

    return Container(
      width: width*0.8,
      height: 60,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: const Color(0xff36e8ff), style: BorderStyle.solid)
      ),
      child: TextFormField(
          keyboardType: TextInputType.number,
          style: inputText,
          decoration: InputDecoration(

            border: InputBorder.none,
            hintText: "Enter Phone Number",
            hintStyle: hintText,
            alignLabelWithHint: true,
            contentPadding:
            const EdgeInsets.fromLTRB(20, 20, 0, 18),
            prefixIcon: Padding(
                padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                child: Text('+233', style: countryCode, textAlign: TextAlign.center,
                )
            ),
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
                  child: Icon(buttonIcon, color: wait? Colors.black26: const Color(0xff36e8ff))
              ),
            ),
          )
      ),
    );
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


