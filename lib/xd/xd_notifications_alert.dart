import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './xd_alert_status.dart';
import 'package:adobe_xd/page_link.dart';
import './xd_fire_stations_alert.dart';
import './xd_account_alert.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XDNotificationsAlert extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 25.0, end: 105.0),
            Pin(size: 38.0, middle: 0.2135),
            child: Text.rich(
              TextSpan(
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 15,
                  color: const Color(0xff000000),
                ),
                children: [
                  TextSpan(
                    text: 'Event of a fire: ',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextSpan(
                    text:
                        'Close doors when exiting to help limit the spread of…',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 25.0, end: 105.0),
            Pin(size: 38.0, end: 52.0),
            child: Text.rich(
              TextSpan(
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 15,
                  color: const Color(0xff000000),
                ),
                children: [
                  TextSpan(
                    text: 'Event of a fire: ',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextSpan(
                    text:
                        'Close doors when exiting to help limit the spread of…',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 25.0, end: 105.0),
            Pin(size: 38.0, middle: 0.3152),
            child: Text.rich(
              TextSpan(
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 15,
                  color: const Color(0xff000000),
                ),
                children: [
                  TextSpan(
                    text: 'Event of a fire: ',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextSpan(
                    text:
                        'Follow the escape plan and meet at a pre-determined…',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 25.0, end: 105.0),
            Pin(size: 38.0, middle: 0.4169),
            child: Text.rich(
              TextSpan(
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 15,
                  color: const Color(0xff000000),
                ),
                children: [
                  TextSpan(
                    text: 'Event of a fire: ',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextSpan(
                    text:
                        'Close doors when exiting to help limit the spread of…',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 25.0, end: 105.0),
            Pin(size: 38.0, middle: 0.5186),
            child: Text.rich(
              TextSpan(
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 15,
                  color: const Color(0xff000000),
                ),
                children: [
                  TextSpan(
                    text: 'Event of a fire: ',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextSpan(
                    text:
                        'Close doors when exiting to help limit the spread of…',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 25.0, end: 105.0),
            Pin(size: 38.0, middle: 0.6203),
            child: Text.rich(
              TextSpan(
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 15,
                  color: const Color(0xff000000),
                ),
                children: [
                  TextSpan(
                    text: 'Event of a fire: ',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextSpan(
                    text:
                        'Close doors when exiting to help limit the spread of…',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 25.0, end: 105.0),
            Pin(size: 38.0, middle: 0.7221),
            child: Text.rich(
              TextSpan(
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 15,
                  color: const Color(0xff000000),
                ),
                children: [
                  TextSpan(
                    text: 'Event of a fire: ',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextSpan(
                    text:
                        'Close doors when exiting to help limit the spread of…',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 25.0, end: 105.0),
            Pin(size: 38.0, middle: 0.8238),
            child: Text.rich(
              TextSpan(
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 15,
                  color: const Color(0xff000000),
                ),
                children: [
                  TextSpan(
                    text: 'Event of a fire: ',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextSpan(
                    text:
                        'Close doors when exiting to help limit the spread of…',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 29.0, end: 30.0),
            Pin(size: 16.0, middle: 0.2097),
            child: Text(
              '2hrs',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 13,
                color: const Color(0xffaaaaaa),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.right,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 28.0, end: 30.0),
            Pin(size: 16.0, middle: 0.3083),
            child: Text(
              '13:15',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 13,
                color: const Color(0xffaaaaaa),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.right,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 36.0, end: 30.0),
            Pin(size: 16.0, middle: 0.4069),
            child: Text(
              '07:43',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 13,
                color: const Color(0xffaaaaaa),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.right,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 36.0, end: 30.0),
            Pin(size: 16.0, middle: 0.5056),
            child: Text(
              '07:43',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 13,
                color: const Color(0xffaaaaaa),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.right,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 36.0, end: 30.0),
            Pin(size: 16.0, middle: 0.6069),
            child: Text(
              '07:43',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 13,
                color: const Color(0xffaaaaaa),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.right,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 36.0, end: 30.0),
            Pin(size: 16.0, middle: 0.7028),
            child: Text(
              '07:43',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 13,
                color: const Color(0xffaaaaaa),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.right,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 36.0, end: 30.0),
            Pin(size: 16.0, middle: 0.8014),
            child: Text(
              '07:43',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 13,
                color: const Color(0xffaaaaaa),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.right,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 36.0, end: 30.0),
            Pin(size: 16.0, end: 72.0),
            child: Text(
              '07:43',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 13,
                color: const Color(0xffaaaaaa),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.right,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 25.0, end: 29.0),
            Pin(size: 16.0, middle: 0.2361),
            child: Text(
              'ago',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 13,
                color: const Color(0xffaaaaaa),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.right,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 65.0, end: 29.0),
            Pin(size: 16.0, middle: 0.3347),
            child: Text(
              'yesterday',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 13,
                color: const Color(0xffaaaaaa),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.right,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 53.0, end: 29.0),
            Pin(size: 16.0, middle: 0.4333),
            child: Text(
              'tuesday',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 13,
                color: const Color(0xffaaaaaa),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.right,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 55.0, end: 29.0),
            Pin(size: 16.0, middle: 0.5319),
            child: Text(
              'monday',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 13,
                color: const Color(0xffaaaaaa),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.right,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 49.0, end: 29.0),
            Pin(size: 16.0, middle: 0.6333),
            child: Text(
              'sunday',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 13,
                color: const Color(0xffaaaaaa),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.right,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 58.0, end: 29.0),
            Pin(size: 16.0, middle: 0.7292),
            child: Text(
              'saturday',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 13,
                color: const Color(0xffaaaaaa),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.right,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 39.0, end: 29.0),
            Pin(size: 16.0, end: 124.0),
            child: Text(
              'friday',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 13,
                color: const Color(0xffaaaaaa),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.right,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 60.0, end: 29.0),
            Pin(size: 16.0, end: 53.0),
            child: Text(
              'thursday',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 13,
                color: const Color(0xffaaaaaa),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.right,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 10.5, end: 9.5),
            Pin(size: 2.0, start: 132.5),
            child: SvgPicture.string(
              _svg_ah5ync,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 10.5, end: 9.5),
            Pin(size: 2.0, middle: 0.2772),
            child: SvgPicture.string(
              _svg_wq9r8y,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 10.5, end: 9.5),
            Pin(size: 2.0, middle: 0.7609),
            child: SvgPicture.string(
              _svg_iiojm0,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 10.5, end: 9.5),
            Pin(size: 2.0, middle: 0.374),
            child: SvgPicture.string(
              _svg_oxwm,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 10.5, end: 9.5),
            Pin(size: 2.0, end: 104.5),
            child: SvgPicture.string(
              _svg_qf8zm,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 10.5, end: 9.5),
            Pin(size: 2.0, middle: 0.4707),
            child: SvgPicture.string(
              _svg_vhsqi8,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 10.5, end: 9.5),
            Pin(size: 2.0, end: 33.5),
            child: SvgPicture.string(
              _svg_tb1y,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 10.5, end: 9.5),
            Pin(size: 2.0, middle: 0.5674),
            child: SvgPicture.string(
              _svg_ha7iva,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 10.5, end: 9.5),
            Pin(size: 2.0, middle: 0.6642),
            child: SvgPicture.string(
              _svg_u9bpri,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
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
                  Pin(size: 40.0, middle: 0.1887),
                  Pin(size: 40.0, middle: 0.5014),
                  child:
                      // Adobe XD layer: 'home' (shape)
                      PageLink(
                    links: [
                      PageLinkInfo(
                        transition: LinkTransition.PushRight,
                        ease: Curves.easeOut,
                        duration: 0.3,
                        pageBuilder: () => XDAlertStatus(),
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
                        transition: LinkTransition.PushRight,
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
                  Pin(size: 164.0, middle: 0.5028),
                  Pin(size: 24.0, middle: 0.4745),
                  child: Text(
                    'Notifications',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 20,
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
                        pageBuilder: () => XDAccountAlert(),
                      ),
                    ],
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                        image: DecorationImage(
                          image: const AssetImage(''),
                          fit: BoxFit.cover,
                        ),
                        border: Border.all(
                            width: 3.0, color: const Color(0xffff365d)),
                      ),
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
        ],
      ),
    );
  }
}

const String _svg_ah5ync =
    '<svg viewBox="10.5 132.5 394.0 2.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="11"/></filter></defs><path transform="translate(10.5, 132.5)" d="M 0 0 L 394 2" fill="none" stroke="#aaaaaa" stroke-width="1" stroke-opacity="0.25" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_wq9r8y =
    '<svg viewBox="10.5 203.5 394.0 2.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="11"/></filter></defs><path transform="translate(10.5, 203.5)" d="M 0 0 L 394 2" fill="none" stroke="#aaaaaa" stroke-width="1" stroke-opacity="0.25" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_iiojm0 =
    '<svg viewBox="10.5 558.5 394.0 2.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="11"/></filter></defs><path transform="translate(10.5, 558.5)" d="M 0 0 L 394 2" fill="none" stroke="#aaaaaa" stroke-width="1" stroke-opacity="0.25" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_oxwm =
    '<svg viewBox="10.5 274.5 394.0 2.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="11"/></filter></defs><path transform="translate(10.5, 274.5)" d="M 0 0 L 394 2" fill="none" stroke="#aaaaaa" stroke-width="1" stroke-opacity="0.25" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_qf8zm =
    '<svg viewBox="10.5 629.5 394.0 2.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="11"/></filter></defs><path transform="translate(10.5, 629.5)" d="M 0 0 L 394 2" fill="none" stroke="#aaaaaa" stroke-width="1" stroke-opacity="0.25" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_vhsqi8 =
    '<svg viewBox="10.5 345.5 394.0 2.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="11"/></filter></defs><path transform="translate(10.5, 345.5)" d="M 0 0 L 394 2" fill="none" stroke="#aaaaaa" stroke-width="1" stroke-opacity="0.25" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_tb1y =
    '<svg viewBox="10.5 700.5 394.0 2.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="11"/></filter></defs><path transform="translate(10.5, 700.5)" d="M 0 0 L 394 2" fill="none" stroke="#aaaaaa" stroke-width="1" stroke-opacity="0.25" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_ha7iva =
    '<svg viewBox="10.5 416.5 394.0 2.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="11"/></filter></defs><path transform="translate(10.5, 416.5)" d="M 0 0 L 394 2" fill="none" stroke="#aaaaaa" stroke-width="1" stroke-opacity="0.25" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_t3otl =
    '<svg viewBox="-2.1 630.8 416.7 106.2" ><defs><filter id="shadow"><feDropShadow dx="0" dy="0" stdDeviation="20"/></filter></defs><path transform="translate(-76.0, 630.81)" d="M 283 0 C 364.8994140625 0 438.6732177734375 15.67381381988525 490.612548828125 40.85432815551758 C 490.700439453125 42.3636474609375 490.612548828125 106.1885986328125 490.612548828125 106.1885986328125 L 73.92830657958984 106.1885986328125 C 73.92830657958984 106.1885986328125 75.03295135498047 42.75042724609375 73.92830657958984 41.56906127929688 C 125.6383438110352 16.03481292724609 200.1628112792969 0 283 0 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_u9bpri =
    '<svg viewBox="10.5 487.5 394.0 2.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="11"/></filter></defs><path transform="translate(10.5, 487.5)" d="M 0 0 L 394 2" fill="none" stroke="#aaaaaa" stroke-width="1" stroke-opacity="0.25" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_xrtap1 =
    '<svg viewBox="-2.1 1.0 416.7 106.2" ><defs><filter id="shadow"><feDropShadow dx="0" dy="0" stdDeviation="20"/></filter></defs><path transform="matrix(-1.0, 0.0, 0.0, -1.0, 488.58, 107.19)" d="M 283 0 C 364.8994140625 0 438.6732177734375 15.67381381988525 490.612548828125 40.85432815551758 C 490.700439453125 42.3636474609375 490.612548828125 106.1885986328125 490.612548828125 106.1885986328125 L 73.92830657958984 106.1885986328125 C 73.92830657958984 106.1885986328125 75.03295135498047 42.75042724609375 73.92830657958984 41.56906127929688 C 125.6383438110352 16.03481292724609 200.1628112792969 0 283 0 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
