import 'dart:async';

import 'package:fire_service/Strings/strings.dart';
import 'package:fire_service/map/get_user_location.dart';
import 'package:fire_service/screens/timer.dart';
import 'package:fire_service/widgets/app_bar.dart';
import 'package:fire_service/widgets/app_bar_red.dart';
import 'package:fire_service/widgets/bottom_bar.dart';
import 'package:fire_service/widgets/bottom_bar_red.dart';
import 'package:fire_service/widgets/menu_drawer.dart';
import 'package:fire_service/xd/xd_alert_call.dart';
import 'package:fire_service/xd/xd_fire_stations_alert.dart';
import 'package:fire_service/xd/xd_home.dart';
import 'package:fire_service/xd/xd_menu_alert.dart';
import 'package:fire_service/xd/xd_notifications_alert.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'alert_call.dart';
import 'home.dart';

class AlertMode extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    Timer(Duration(seconds: 5), () => Navigator.push(context,
        MaterialPageRoute(builder: (_)=> AlertCall())));
    return Scaffold(
      drawer: MenuDrawer(),
      backgroundColor: const Color(0xfffc617e),
      body:
      Stack(
        children: <Widget>[
          AppBarRed(),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height:20.0),
                Container(
                  width: width*0.8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: white,
                    boxShadow: [
                      BoxShadow(
                        color: shadowColor,
                        offset: Offset(0, 0),
                        blurRadius: 20,
                      ),
                    ],
                  ),
                  child:
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Alerting Fire Service…',
                          style: boldRed,
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 10,),
                        Text(
                          'This call will start automatically in:',
                          style: smallBlack,
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 10.0),
                        CallTimer(),
                        SizedBox(height: 10.0),
                        Text(
                          'Your location coordinates are:',
                          style: smallBlack,
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 5.0),
                        Row(
                          children: [
                            Expanded(
                                child: Container(
                                  height: 1,
                                  color: Colors.black26,
                                )),
                          ],
                        ),
                        SizedBox(height: 5.0),
                        UserLocation(),
                        SizedBox(height: 20.0),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: red,
                            boxShadow: [
                              BoxShadow(
                                color: shadowColor,
                                offset: Offset.zero,
                                blurRadius: 15,
                              ),
                            ],
                          ),
                          child: FlatButton(
                            child: Text('ALERT NOW!', style: buttonWhite, textAlign: TextAlign.center),
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (_)=> AlertCall()));
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(1000)
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: height*0.03,),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: white,
                    boxShadow: [
                      BoxShadow(
                        color: shadowColor,
                        offset: Offset.zero,
                        blurRadius: 15,
                      ),
                    ],
                  ),
                  child: FlatButton(
                    child: Text('CANCEL', style: normalRed),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=> Home()));
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(1000)
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomBarRed(),
        ],
      ),
    );
  }
}



CallTimers() {
}

const String _svg_otp6zh =
    '<svg viewBox="59.0 402.0 296.0 1.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="11"/></filter></defs><path transform="translate(59.0, 402.0)" d="M 0 0 L 296 0" fill="none" stroke="#aaaaaa" stroke-width="1" stroke-opacity="0.5" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';

