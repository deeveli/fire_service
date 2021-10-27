import 'dart:async';

import 'package:fire_service/Strings/strings.dart';
import 'package:flutter/material.dart';

class SOS extends StatefulWidget {
  const SOS({Key? key}) : super(key: key);

  @override
  State<SOS> createState() => _SOSState();
}

class _SOSState extends State<SOS> {


  @override
  Widget build(BuildContext context) {

    return Container(
      height: 250,
      width: 250,
      decoration: BoxDecoration(
        borderRadius:
        BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
        color: const Color(0x8036e8ff),
        boxShadow: [
          BoxShadow(
            color: const Color(0x8036e8ff),
            offset: Offset(0, 0),
            blurRadius: 13,
          ),
        ],
      ),
      child:
      Container(
        margin: EdgeInsets.all(40),
        decoration: BoxDecoration(
          borderRadius:
          BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
          color: const Color(0xffffffff),
          boxShadow: [
            BoxShadow(
              color: const Color(0x8036e8ff),
              offset: Offset(0, 0),
              blurRadius: 53,
            ),
          ],
        ),
        child:     Container(
          decoration: BoxDecoration(
            borderRadius:
            BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
            color: const Color(0xff36e8ff),
            // color: tap==true?Colors.red.shade700:const Color(0xff36e8ff),
            border: Border.all(
                width: 3.0, color: const Color(0xb3ffffff)),
          ),
          child: Center(
            child: Text(
              'SOS',style: button,
              textAlign: TextAlign.left,
            ),
          ),
        ),
      ),
    );
  }
}

