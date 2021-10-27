import 'package:adobe_xd/adobe_xd.dart';
import 'package:fire_service/Strings/strings.dart';
import 'package:fire_service/screens/fire_station.dart';
import 'package:fire_service/screens/notification.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomBarAccount extends StatelessWidget {
  const BottomBarAccount({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Pinned.fromPins(
      Pin(start: -2.1, end: -0.7),
      Pin(size: 106.2, end: -1.0),
      child:
      // Adobe XD layer: 'bottomNavigationBar' (group)
      Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(start: 0.0, end: 0.0),
            child:
            // Adobe XD layer: 'BottomNavigationBar' (shape)
            SvgPicture.string(
              _svg_bottom,
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
                  pageBuilder: () => Notifications(),
                ),
              ],
              child: Container(
                child: Image.asset('assets/img/notifications.png', color: Colors.white),
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
                  transition: LinkTransition.PushLeft,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => Notifications(),
                ),
              ],
              child: Container(
                child: Image.asset('assets/img/home.png', color: Colors.white),
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
                  pageBuilder: () => FireStations(),
                ),
              ],
              child: Container(
                child: Image.asset('assets/img/fireStations.png', color: white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_bottom =
    '<svg viewBox="-2.1 630.8 416.7 106.2" ><defs><filter id="shadow"><feDropShadow dx="0" dy="0" stdDeviation="20"/></filter></defs><path transform="translate(-76.0, 630.81)" d="M 283 0 C 364.8994140625 0 438.6732177734375 15.67381381988525 490.612548828125 40.85432815551758 C 490.700439453125 42.3636474609375 490.612548828125 106.1885986328125 490.612548828125 106.1885986328125 L 73.92830657958984 106.1885986328125 C 73.92830657958984 106.1885986328125 75.03295135498047 42.75042724609375 73.92830657958984 41.56906127929688 C 125.6383438110352 16.03481292724609 200.1628112792969 0 283 0 Z" fill="#21D3FF" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
