import 'dart:async';

import 'package:fire_service/Strings/change_color.dart';
import 'package:fire_service/Strings/strings.dart';
import 'package:fire_service/map/get_user_location.dart';
import 'package:fire_service/screens/emergency_map.dart';
import 'package:fire_service/screens/fire_station.dart';
import 'package:fire_service/screens/notification.dart';
import 'package:fire_service/widgets/app_bar.dart';
import 'package:fire_service/widgets/bottom_bar.dart';
import 'package:fire_service/widgets/dot_indicator.dart';
import 'package:fire_service/widgets/end_sos_button.dart';
import 'package:fire_service/widgets/menu_drawer.dart';
import 'package:fire_service/widgets/sos_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:adobe_xd/page_link.dart';

import 'alert_bg.dart';


class SOSMode extends StatefulWidget {
  const SOSMode({Key? key}) : super(key: key);


  @override
  _SOSModeState createState() => _SOSModeState();
}

class _SOSModeState extends State<SOSMode> {

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      drawer: MenuDrawer(),
      backgroundColor: white,
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlatButton(
                  child: EndSOS(),
                  onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=> AlertMode()));
                      // getCurrentLocation();
                    },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(1000)
                  ),
                ),
                SizedBox(height: 40),
                Container(
                  width: width*0.75,
                  child: Column(
                    children: [
                      Text(
                        'KEEP CALM!', style: boldRed, textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 5,),
                      Text.rich(
                        TextSpan(
                          text: "Accra National Fire Station ",
                          style: normalBlack,
                            // decoration: TextDecoration.underline),
                          children: <TextSpan>[
                            TextSpan(
                                text: ' will arrive shortly.',
                                ),
                            // can add more TextSpans here...
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
              ),
            AlertMap(),
            AppBarNav(),
            BottomBar(),
          ],
        ),
      ),
    );
  }
}
