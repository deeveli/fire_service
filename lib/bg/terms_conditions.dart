import 'package:fire_service/xd/xd_account.dart';
import 'package:fire_service/xd/xd_fire_stations.dart';
import 'package:fire_service/xd/xd_notifications.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home.dart';

class TermsConditions extends StatelessWidget {

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
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'TERMS & CONDITIONS',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 20,
                      color: const Color(0xffff365d),
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Container(
                    width: width*0.6,
                    child: Text.rich(
                      TextSpan(
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 16,
                          color: const Color(0xffaaaaaa),
                        ),
                        children: [
                          TextSpan(
                            text: 'Click link to download ',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          TextSpan(
                            text: 'Ghana National Fire Service ACT, 1997 (ACT 537)',
                            style: TextStyle(
                              color: const Color(0xff76b1ef),
                              fontWeight: FontWeight.w500,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          TextSpan(
                            text: ' PDF',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      textHeightBehavior:
                      TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],

              ),
            ],
          ),


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
                    _svg_xrtap1,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 42.0, middle: 0.5019),
                  Pin(size: 37.0, middle: 0.4191),
                  child: Text(
                    '911',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 30,
                      color: const Color(0xff1a1a1a),
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 40.0, end: 29.7),
                  Pin(size: 40.0, middle: 0.423),
                  child:
                  // Adobe XD layer: 'profile' (shape)
                  PageLink(
                    links: [
                      PageLinkInfo(
                        transition: LinkTransition.Fade,
                        ease: Curves.easeOut,
                        duration: 0.3,
                        pageBuilder: () => XDAccount(),
                      ),
                    ],
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                        // image: DecorationImage(
                        //   image: const AssetImage(''),
                        //   fit: BoxFit.cover,
                        // ),
                        border: Border.all(
                            width: 3.0, color: const Color(0xffff365d)),
                      ),
                      child:  SvgPicture.asset('assets/home.svg'),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 25.0, start: 27.1),
                  Pin(size: 25.0, middle: 0.4434),
                  child:
                  // Adobe XD layer: 'menu' (shape)
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: const AssetImage(''),
                        fit: BoxFit.fill,
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
                    _svg_t3otl,
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
                        transition: LinkTransition.Fade,
                        ease: Curves.easeOut,
                        duration: 0.3,
                        pageBuilder: () => XDNotifications(),
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
                  PageLink(
                    links: [
                      PageLinkInfo(
                        transition: LinkTransition.Fade,
                        ease: Curves.easeOut,
                        duration: 0.3,
                        pageBuilder: () => Home(),
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
                  Pin(size: 40.0, middle: 0.5019),
                  Pin(size: 40.0, middle: 0.5014),
                  child:
                  // Adobe XD layer: 'fireStations' (shape)
                  PageLink(
                    links: [
                      PageLinkInfo(
                        transition: LinkTransition.Fade,
                        ease: Curves.easeOut,
                        duration: 0.3,
                        pageBuilder: () => XDFireStations(),
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
        ],
      ),
    );
  }
}

const String _svg_xrtap1 =
    '<svg viewBox="-2.1 1.0 416.7 106.2" ><defs><filter id="shadow"><feDropShadow dx="0" dy="0" stdDeviation="20"/></filter></defs><path transform="matrix(-1.0, 0.0, 0.0, -1.0, 488.58, 107.19)" d="M 283 0 C 364.8994140625 0 438.6732177734375 15.67381381988525 490.612548828125 40.85432815551758 C 490.700439453125 42.3636474609375 490.612548828125 106.1885986328125 490.612548828125 106.1885986328125 L 73.92830657958984 106.1885986328125 C 73.92830657958984 106.1885986328125 75.03295135498047 42.75042724609375 73.92830657958984 41.56906127929688 C 125.6383438110352 16.03481292724609 200.1628112792969 0 283 0 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_t3otl =
    '<svg viewBox="-2.1 630.8 416.7 106.2" ><defs><filter id="shadow"><feDropShadow dx="0" dy="0" stdDeviation="20"/></filter></defs><path transform="translate(-76.0, 630.81)" d="M 283 0 C 364.8994140625 0 438.6732177734375 15.67381381988525 490.612548828125 40.85432815551758 C 490.700439453125 42.3636474609375 490.612548828125 106.1885986328125 490.612548828125 106.1885986328125 L 73.92830657958984 106.1885986328125 C 73.92830657958984 106.1885986328125 75.03295135498047 42.75042724609375 73.92830657958984 41.56906127929688 C 125.6383438110352 16.03481292724609 200.1628112792969 0 283 0 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';