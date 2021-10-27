import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './xd_account_alert.dart';
import 'package:adobe_xd/page_link.dart';
import './xd_notifications_alert.dart';
import './xd_fire_stations_alert.dart';
import './xd_alert_status.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XDAlertMap extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: -2.1, end: -1.0),
            Pin(start: -718.0, end: -60.0),
            child:
                // Adobe XD layer: 'MapSection' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.1, end: 0.0),
                  Pin(start: 0.0, end: 42.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xffffffff),
                      border: Border.all(
                          width: 1.0, color: const Color(0xff707070)),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 66.1, end: 64.0),
                  Pin(size: 18.0, middle: 0.3951),
                  child: Scrollbar(
                    child: SingleChildScrollView(
                      child: Text(
                        'Swipe up to see progress',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 16,
                          color: const Color(0x66aaaaaa),
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 15.0, middle: 0.5076),
                  Pin(size: 19.0, middle: 0.3839),
                  child: Transform.rotate(
                    angle: -1.5708,
                    child:
                        // Adobe XD layer: 'move-to-next' (shape)
                        Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: const AssetImage(''),
                          fit: BoxFit.fill,
                          colorFilter: new ColorFilter.mode(
                              Colors.black.withOpacity(0.1), BlendMode.dstIn),
                        ),
                      ),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 66.1, end: 64.0),
                  Pin(size: 45.0, middle: 0.3376),
                  child: Text(
                    'Fire Service - Makola will be here in 5 minutes.',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 16,
                      color: const Color(0xffaaaaaa),
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 128.0, middle: 0.5019),
                  Pin(size: 24.0, middle: 0.3148),
                  child: Text(
                    'Keep Calm!',
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
                  Pin(size: 251.0, middle: 0.5062),
                  Pin(size: 251.0, start: 195.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                      color: const Color(0x80ff365d),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 177.0, middle: 0.5043),
                  Pin(size: 177.0, middle: 0.1735),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                      color: const Color(0xffffffff),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xffff365d),
                          offset: Offset(0, 0),
                          blurRadius: 53,
                        ),
                      ],
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 177.0, middle: 0.5043),
                  Pin(size: 177.0, middle: 0.1735),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                      color: const Color(0xffff365d),
                      border: Border.all(
                          width: 3.0, color: const Color(0xb3ffe8ed)),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 126.0, middle: 0.5018),
                  Pin(size: 73.0, middle: 0.1971),
                  child: Text(
                    'SOS',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 60,
                      color: const Color(0xffffffff),
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.3),
                  Pin(size: 841.2, end: 0.0),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child:
                            // Adobe XD layer: 'Screenshot 2021-06-…' (shape)
                            SvgPicture.string(
                          _svg_nza6mx,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 203.2, end: 39.4),
                        Pin(size: 334.1, middle: 0.5722),
                        child:
                            // Adobe XD layer: 'RoadPath' (shape)
                            SvgPicture.string(
                          _svg_ydyi2f,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 30.0, middle: 0.4087),
                        Pin(size: 30.0, middle: 0.7473),
                        child:
                            // Adobe XD layer: 'fire' (shape)
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
                  Pin(size: 30.0, middle: 0.7546),
                  Pin(size: 30.0, middle: 0.6422),
                  child: Transform.rotate(
                    angle: 4.4506,
                    child:
                        // Adobe XD layer: 'Fire-Truck-Top-Red-…' (shape)
                        Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: const AssetImage(''),
                          fit: BoxFit.fill,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xffff365d),
                            offset: Offset(0, 0),
                            blurRadius: 20,
                          ),
                        ],
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
          Pinned.fromPins(
            Pin(size: 60.0, end: 27.0),
            Pin(size: 60.0, middle: 0.8314),
            child:
                // Adobe XD layer: 'Cancel' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(75.0),
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
                  Pin(size: 25.0, middle: 0.5143),
                  Pin(size: 25.0, middle: 0.5143),
                  child:
                      // Adobe XD layer: 'Cancel' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: SvgPicture.string(
                          _svg_xlqva8,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 1.0),
                        Pin(start: 0.0, end: 0.0),
                        child: SvgPicture.string(
                          _svg_tsk16g,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 287.0, middle: 0.5039),
            Pin(size: 33.0, middle: 0.1792),
            child:
                // Adobe XD layer: 'Swipe Up' (group)
                PageLink(
              links: [
                PageLinkInfo(
                  ease: Curves.easeOut,
                  duration: 0.5,
                  pageBuilder: () => XDAlertStatus(),
                ),
              ],
              child: Stack(
                children: <Widget>[
                  Pinned.fromPins(
                    Pin(start: 0.0, end: 0.0),
                    Pin(size: 18.0, start: 0.0),
                    child: Scrollbar(
                      child: SingleChildScrollView(
                        child: Text(
                          'Swipe up to see progress',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 16,
                            color: const Color(0x66ff365d),
                            fontWeight: FontWeight.w500,
                            shadows: [
                              Shadow(
                                color: const Color(0xffffffff),
                                blurRadius: 10,
                              )
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  Pinned.fromPins(
                    Pin(size: 15.0, middle: 0.5074),
                    Pin(size: 19.0, end: -2.0),
                    child: Transform.rotate(
                      angle: 1.5708,
                      child:
                          // Adobe XD layer: 'move-to-next' (shape)
                          Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: const AssetImage(''),
                            fit: BoxFit.fill,
                            colorFilter: new ColorFilter.mode(
                                Colors.black.withOpacity(0.1), BlendMode.dstIn),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0x1affffff),
                              offset: Offset(0, 3),
                              blurRadius: 6,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_nza6mx =
    '<svg viewBox="-2.1 673.8 416.7 841.2" ><defs><filter id="shadow"><feDropShadow dx="0" dy="0" stdDeviation="20"/></filter><pattern id="image" patternUnits="userSpaceOnUse" width="1280.0" height="633.0"><image xlink:href="null" x="0" y="0" width="1280.0" height="633.0" /></pattern></defs><path transform="translate(-76.0, 673.81)" d="M 283 0 C 364.8994140625 0 438.6732177734375 15.67381381988525 490.612548828125 40.85432815551758 C 490.700439453125 42.3636474609375 490.612548828125 106.1885986328125 490.612548828125 106.1885986328125 L 490.612548828125 841.1885986328125 L 73.92830657958984 841.1885986328125 L 73.92830657958984 106.1885986328125 C 73.92830657958984 106.1885986328125 75.03295135498047 42.75042724609375 73.92830657958984 41.56906127929688 C 125.6383438110352 16.03481292724609 200.1628112792969 0 283 0 Z" fill="url(#image)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_ydyi2f =
    '<svg viewBox="172.1 964.0 203.2 334.1" ><defs><filter id="shadow"><feDropShadow dx="0" dy="0" stdDeviation="6"/></filter></defs><path transform="translate(-2420.0, 719.0)" d="M 2725 244.9581604003906 C 2725 244.9581604003906 2756.4462890625 369.0967102050781 2771.86181640625 434.9803771972656 C 2787.27734375 500.8640441894531 2780.8037109375 482.2286071777344 2786.662353515625 508.4928588867188 C 2792.52099609375 534.757080078125 2795.296630859375 540.037353515625 2795.296630859375 540.037353515625 L 2592.104248046875 579.1048583984375" fill="none" stroke="#36e8ff" stroke-width="4" stroke-opacity="0.5" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_xrtap1 =
    '<svg viewBox="-2.1 1.0 416.7 106.2" ><defs><filter id="shadow"><feDropShadow dx="0" dy="0" stdDeviation="20"/></filter></defs><path transform="matrix(-1.0, 0.0, 0.0, -1.0, 488.58, 107.19)" d="M 283 0 C 364.8994140625 0 438.6732177734375 15.67381381988525 490.612548828125 40.85432815551758 C 490.700439453125 42.3636474609375 490.612548828125 106.1885986328125 490.612548828125 106.1885986328125 L 73.92830657958984 106.1885986328125 C 73.92830657958984 106.1885986328125 75.03295135498047 42.75042724609375 73.92830657958984 41.56906127929688 C 125.6383438110352 16.03481292724609 200.1628112792969 0 283 0 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_t3otl =
    '<svg viewBox="-2.1 630.8 416.7 106.2" ><defs><filter id="shadow"><feDropShadow dx="0" dy="0" stdDeviation="20"/></filter></defs><path transform="translate(-76.0, 630.81)" d="M 283 0 C 364.8994140625 0 438.6732177734375 15.67381381988525 490.612548828125 40.85432815551758 C 490.700439453125 42.3636474609375 490.612548828125 106.1885986328125 490.612548828125 106.1885986328125 L 73.92830657958984 106.1885986328125 C 73.92830657958984 106.1885986328125 75.03295135498047 42.75042724609375 73.92830657958984 41.56906127929688 C 125.6383438110352 16.03481292724609 200.1628112792969 0 283 0 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_xlqva8 =
    '<svg viewBox="-0.3 0.4 25.0 25.0" ><path transform="translate(-0.31, 0.4)" d="M 0 0 L 25 25" fill="none" stroke="#ff365d" stroke-width="4" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_tsk16g =
    '<svg viewBox="-0.3 0.4 24.0 25.0" ><path transform="translate(-0.31, 0.4)" d="M 24 0 L 0 25" fill="none" stroke="#ff365d" stroke-width="4" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
