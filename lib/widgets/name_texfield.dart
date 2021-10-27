import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NameField extends StatefulWidget {
  const NameField({Key? key}) : super(key: key);

  @override
  State<NameField> createState() => _NameFieldState();
}

class _NameFieldState extends State<NameField> {
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
      height: 50,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: const Color(0xff36e8ff), style: BorderStyle.solid)
      ),
      child: TextFormField(
          keyboardType: TextInputType.name,
          style: inputText,
          decoration: InputDecoration(

            border: InputBorder.none,
            hintText: "Username",
            hintStyle: hintText,
            alignLabelWithHint: true,
            contentPadding:
            const EdgeInsets.fromLTRB(20, 20, 0, 18),
            prefixIcon: Padding(
                padding: const EdgeInsets.fromLTRB(10, 12, 10, 10),
                child: Text('Mr.', style: countryCode, textAlign: TextAlign.center,
                )
            ),
      )),
    );
  }
}


