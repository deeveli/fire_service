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

    return Scaffold(
      backgroundColor: const Color(0xfffc617e),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: -2.1, end: -0.7),
            Pin(size: 106.2, start: 1.0),
            child:
            // Adobe XD layer: 'AppBar' (group)
            Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                  // Adobe XD layer: 'appBar' (shape)
                  SvgPicture.string(
                    _svg_a0zp2r,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(40,10,40,0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          PageLink(
                            links: [
                              PageLinkInfo(
                                transition: LinkTransition.PushRight,
                                ease: Curves.easeOut,
                                duration: 0.5,
                                pageBuilder: () => XDMenuAlert(),
                              ),
                            ],
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: const AssetImage('assets/menu.png'),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                          Text(
                            '911',
                            style: title ),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                              image: DecorationImage(
                                image: const AssetImage(''),
                                fit: BoxFit.cover,
                              ),
                              border: Border.all(
                                  width: 3.0, color: const Color(0xffffffff)),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: const Color(0xffffffff),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0x26000000), offset: Offset(0, 0),
                      blurRadius: 20,
                    ),
                  ],
                ),
                child: Container(
                  width: width*0.6,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: new AssetImage('assets/menu.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                child:
                 Padding(
                   padding: const EdgeInsets.fromLTRB(30,20,30,20),
                   child: Column(
                      children: [
                        Text(
                          'Alerting Fire Service…',
                          style: bold_red
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          'Your location coordinates are:',
                          style: bold_black
                        ),
                        SizedBox(height: 5.0),
                        SvgPicture.string(
                          _svg_otp6zh,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          'Lat: 5.57888  |  Long: -0.23261\nSam Street, Accra,\nGreater Accra, GH',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 13,
                            color: const Color(0xffaaaaaa),
                            fontWeight: FontWeight.w200,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                 ),
                )
              ),
              SizedBox(height: 35),
              PageLink(
                links: [
                  PageLinkInfo(
                    transition: LinkTransition.Fade,
                    ease: Curves.easeOut,
                    duration: 0.3,
                    pageBuilder: () => Home(),
                  ),
                ],
                child:
                Container(
                  // margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: const Color(0xffffffff),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x26000000),
                        offset: Offset(0, 0),
                        blurRadius: 20,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(15,8,15,8),
                    child: Text('Cancel',style: bold_red
                    ),
                  ),
                ),
              ),
            ],
          ),
          ),
          Pinned.fromPins(
            Pin(start: -2.1, end: -0.7),
            Pin(size: 106.2, end: -1.0),
            child:
            // Adobe XD layer: 'BottomNavigationBar' (group)
            Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                  // Adobe XD layer: 'BottomNavigationBar' (shape)
                  SvgPicture.string(
                    _svg_expwsp,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 40.0, middle: 0.8151),
                  Pin(size: 40.0, middle: 0.5014),
                  child:
                  // Adobe XD layer: 'notifications' (shape)
                  PageLink(
                    links: [
                      PageLinkInfo(
                        transition: LinkTransition.PushLeft,
                        ease: Curves.easeOut,
                        duration: 0.3,
                        pageBuilder: () => XDNotificationsAlert(),
                      ),
                    ],
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: const AssetImage(''),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 40.0, middle: 0.1887),
                  Pin(size: 40.0, middle: 0.5014),
                  child:
                  // Adobe XD layer: 'home' (shape)
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: const AssetImage(''),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 40.0, middle: 0.5019),
                  Pin(size: 40.0, middle: 0.5014),
                  child:
                  // Adobe XD layer: 'fireStations' (shape)
                  PageLink(
                    links: [
                      PageLinkInfo(
                        transition: LinkTransition.PushLeft,
                        ease: Curves.easeOut,
                        duration: 0.3,
                        pageBuilder: () => XDFireStationsAlert(),
                      ),
                    ],
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: const AssetImage(''),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
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