import 'dart:async';

import 'package:fire_service/Strings/strings.dart';
import 'package:flutter/material.dart';

class EndSOS extends StatefulWidget {
  const EndSOS({Key? key}) : super(key: key);

  @override
  State<EndSOS> createState() => _EndSOSState();
}

class _EndSOSState extends State<EndSOS> {


  @override
  Widget build(BuildContext context) {

    return Container(
      height: 250,
      width: 250,
      decoration: BoxDecoration(
        borderRadius:
        BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
        color: red,
        boxShadow: [
          BoxShadow(
            color: red,
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
          color: white,
          boxShadow: [
            BoxShadow(
              color: red,
              offset: Offset(0, 0),
              blurRadius: 53,
            ),
          ],
        ),
        child:     Container(
          decoration: BoxDecoration(
            borderRadius:
            BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
            color: red,
            // color: tap==true?Colors.red.shade700:const Color(0xff36e8ff),
            border: Border.all(
                width: 3.0, color: white),
          ),
          child: Center(
            child: Text(
              'End',style: button,
              textAlign: TextAlign.left,
            ),
          ),
        ),
      ),
    );
  }
}

