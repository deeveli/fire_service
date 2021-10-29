import 'dart:async';

import 'package:fire_service/Strings/strings.dart';
import 'package:fire_service/bg/sos_mode.dart';
import 'package:fire_service/map/get_user_location.dart';
import 'package:fire_service/widgets/app_bar_red.dart';
import 'package:fire_service/widgets/bottom_bar_red.dart';
import 'package:fire_service/xd/xd_fire_stations_alert.dart';
import 'package:fire_service/xd/xd_menu_alert.dart';
import 'package:fire_service/xd/xd_notifications_alert.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home.dart';

class AlertCall extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    final bold_red = GoogleFonts.montserrat(fontStyle:FontStyle.normal, fontSize: 18, fontWeight: FontWeight.w500, color: const Color(0xffff365d));
    final title = GoogleFonts.montserrat(fontStyle: FontStyle.normal, fontSize: 30, fontWeight: FontWeight.w800, letterSpacing: 2, color: const Color(0xff000000));
    final bold_black = GoogleFonts.montserrat(fontStyle: FontStyle.normal, fontSize: 15, fontWeight: FontWeight.w500, color: const Color(0xff000000));
    final normal_red = GoogleFonts.montserrat(fontStyle: FontStyle.normal, fontSize: 15, fontWeight: FontWeight.w400, color: const Color(0xffff365d));
    final normal_black = GoogleFonts.montserrat(fontStyle: FontStyle.normal, fontSize: 13, fontWeight: FontWeight.w400, color: const Color(0xffaaaaaa));

    Timer(Duration(seconds: 2), () => Navigator.push(context,
        MaterialPageRoute(builder: (_)=> SOSMode())));


    return Scaffold(
      backgroundColor: const Color(0xfffc617e),
      body: Stack(
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

                        SizedBox(height: 10.0),
                        Text(
                          'Your location is:',
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

const String _svg_lzt05 =
    '<svg viewBox="59.0 365.0 296.0 1.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="11"/></filter></defs><path transform="translate(59.0, 365.0)" d="M 0 0 L 296 0" fill="none" stroke="#aaaaaa" stroke-width="1" stroke-opacity="0.5" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_a0zp2r =
    '<svg viewBox="-2.1 1.0 416.7 106.2" ><defs><filter id="shadow"><feDropShadow dx="0" dy="0" stdDeviation="20"/></filter></defs><path transform="matrix(-1.0, 0.0, 0.0, -1.0, 488.58, 107.19)" d="M 283 0 C 364.8994140625 0 438.6732177734375 15.67381381988525 490.612548828125 40.85432815551758 C 490.700439453125 42.3636474609375 490.612548828125 106.1885986328125 490.612548828125 106.1885986328125 L 73.92830657958984 106.1885986328125 C 73.92830657958984 106.1885986328125 75.03295135498047 42.75042724609375 73.92830657958984 41.56906127929688 C 125.6383438110352 16.03481292724609 200.1628112792969 0 283 0 Z" fill="#ff365d" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_expwsp =
    '<svg viewBox="-2.1 630.8 416.7 106.2" ><defs><filter id="shadow"><feDropShadow dx="0" dy="0" stdDeviation="20"/></filter></defs><path transform="translate(-76.0, 630.81)" d="M 283 0 C 364.8994140625 0 438.6732177734375 15.67381381988525 490.612548828125 40.85432815551758 C 490.700439453125 42.3636474609375 490.612548828125 106.1885986328125 490.612548828125 106.1885986328125 L 73.92830657958984 106.1885986328125 C 73.92830657958984 106.1885986328125 75.03295135498047 42.75042724609375 73.92830657958984 41.56906127929688 C 125.6383438110352 16.03481292724609 200.1628112792969 0 283 0 Z" fill="#ff365d" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_otp6zh =
    '<svg viewBox="59.0 402.0 296.0 1.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="11"/></filter></defs><path transform="translate(59.0, 402.0)" d="M 0 0 L 296 0" fill="none" stroke="#aaaaaa" stroke-width="1" stroke-opacity="0.5" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';