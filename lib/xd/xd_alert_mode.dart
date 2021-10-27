import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './xd_home.dart';
import 'package:adobe_xd/page_link.dart';
import './xd_alert_call.dart';
import './xd_notifications_alert.dart';
import './xd_fire_stations_alert.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XDAlertMode extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffc617e),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(size: 150.0, middle: 0.5),
            Pin(size: 35.0, middle: 0.8146),
            child:
            // Adobe XD layer: 'Cancel' (group)
            PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => XDHome(),
                ),
              ],
              child: Stack(
                children: <Widget>[
                  Pinned.fromPins(
                    Pin(start: 0.0, end: 0.0),
                    Pin(start: 0.0, end: 0.0),
                    child: Container(
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
                    ),
                  ),
                  Pinned.fromPins(
                    Pin(size: 72.0, middle: 0.4744),
                    Pin(size: 20.0, middle: 0.4667),
                    child: Text(
                      'Cancel',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 17,
                        color: const Color(0xffff365d),
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 35.0, end: 35.0),
            Pin(size: 392.0, middle: 0.4651),
            child:
            // Adobe XD layer: 'AlertBox' (group)
            Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: const Color(0xffffffff),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x26000000),
                          offset: Offset(0, 0),
                          blurRadius: 20,
                        ),
                      ],
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 29.0, end: 28.0),
                  Pin(size: 45.0, start: 56.0),
                  child: Text(
                    'Mr. Calix,\nyou are about to call emergency',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 14,
                      color: const Color(0xffaaaaaa),
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 29.0, end: 28.0),
                  Pin(size: 17.0, middle: 0.5867),
                  child: Scrollbar(
                    child: SingleChildScrollView(
                      child: Text(
                        'Your location coordinates are:',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 16,
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 29.0, end: 28.0),
                  Pin(size: 22.0, middle: 0.273),
                  child: Text(
                    'This call will start automatically in:',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 16,
                      color: const Color(0xff000000),
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 29.0, end: 28.0),
                  Pin(size: 64.0, middle: 0.7591),
                  child: Text(
                    'Lat: 5.57888  |  Long: -0.23261\nSam Street, Accra,\nGreater Accra, GH',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 16,
                      color: const Color(0xffaaaaaa),
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 76.0, middle: 0.5),
                  Pin(size: 73.0, middle: 0.4232),
                  child: Text(
                    '05',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 60,
                      color: const Color(0xffff365d),
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 212.0, middle: 0.5),
                  Pin(size: 49.0, end: 23.0),
                  child:
                  // Adobe XD layer: 'AlertNow' (group)
                  Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: PageLink(
                          links: [
                            PageLinkInfo(
                              ease: Curves.easeInOut,
                              duration: 0.3,
                              pageBuilder: () => XDAlertCall(),
                            ),
                          ],
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              color: const Color(0xffff365d),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0x26000000),
                                  offset: Offset(0, 0),
                                  blurRadius: 20,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 22.0, end: 23.0),
                        Pin(size: 30.0, middle: 0.5263),
                        child: Text(
                          'Alert now!',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 25,
                            color: const Color(0xffffffff),
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 224.0, middle: 0.5),
                  Pin(size: 24.0, start: 20.0),
                  child: Text(
                    'Alerting Fire Service…',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 20,
                      color: const Color(0xffff365d),
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 24.0, end: 24.0),
                  Pin(size: 1.0, middle: 0.6189),
                  child: SvgPicture.string(
                    _svg_otp6zh,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 12.0, middle: 0.253),
                  Pin(size: 12.0, middle: 0.7132),
                  child:
                  // Adobe XD layer: 'placeholder' (shape)
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
                  Container(
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
        ],
      ),
    );
  }
}

const String _svg_otp6zh =
    '<svg viewBox="59.0 402.0 296.0 1.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="11"/></filter></defs><path transform="translate(59.0, 402.0)" d="M 0 0 L 296 0" fill="none" stroke="#aaaaaa" stroke-width="1" stroke-opacity="0.5" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_a0zp2r =
    '<svg viewBox="-2.1 1.0 416.7 106.2" ><defs><filter id="shadow"><feDropShadow dx="0" dy="0" stdDeviation="20"/></filter></defs><path transform="matrix(-1.0, 0.0, 0.0, -1.0, 488.58, 107.19)" d="M 283 0 C 364.8994140625 0 438.6732177734375 15.67381381988525 490.612548828125 40.85432815551758 C 490.700439453125 42.3636474609375 490.612548828125 106.1885986328125 490.612548828125 106.1885986328125 L 73.92830657958984 106.1885986328125 C 73.92830657958984 106.1885986328125 75.03295135498047 42.75042724609375 73.92830657958984 41.56906127929688 C 125.6383438110352 16.03481292724609 200.1628112792969 0 283 0 Z" fill="#ff365d" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_expwsp =
    '<svg viewBox="-2.1 630.8 416.7 106.2" ><defs><filter id="shadow"><feDropShadow dx="0" dy="0" stdDeviation="20"/></filter></defs><path transform="translate(-76.0, 630.81)" d="M 283 0 C 364.8994140625 0 438.6732177734375 15.67381381988525 490.612548828125 40.85432815551758 C 490.700439453125 42.3636474609375 490.612548828125 106.1885986328125 490.612548828125 106.1885986328125 L 73.92830657958984 106.1885986328125 C 73.92830657958984 106.1885986328125 75.03295135498047 42.75042724609375 73.92830657958984 41.56906127929688 C 125.6383438110352 16.03481292724609 200.1628112792969 0 283 0 Z" fill="#ff365d" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
