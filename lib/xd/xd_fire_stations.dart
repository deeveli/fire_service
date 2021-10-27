import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './xd_fire_station.dart';
import 'package:adobe_xd/page_link.dart';
import './xd_account.dart';
import './xd_notifications.dart';
import './xd_home.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XDFireStations extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 10.5, end: 9.5),
            Pin(size: 925.0, end: -321.5),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 14.5, end: 13.5),
                  Pin(size: 38.0, start: 16.5),
                  child: PageLink(
                    links: [
                      PageLinkInfo(
                        transition: LinkTransition.SlideLeft,
                        ease: Curves.easeOut,
                        duration: 0.3,
                        pageBuilder: () => XDFireStation(),
                      ),
                    ],
                    child: Text.rich(
                      TextSpan(
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 15,
                          color: const Color(0xff000000),
                        ),
                        children: [
                          TextSpan(
                            text: 'GHANA NATIONAL FIRE SERVICE HEADQUARTERS - ',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          TextSpan(
                            text: 'Osu, Accra',
                            style: TextStyle(
                              color: const Color(0xffaaaaaa),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      textHeightBehavior:
                          TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 14.5, end: 13.5),
                  Pin(size: 38.0, middle: 0.4188),
                  child: PageLink(
                    links: [
                      PageLinkInfo(
                        transition: LinkTransition.SlideLeft,
                        ease: Curves.easeOut,
                        duration: 0.3,
                        pageBuilder: () => XDFireStation(),
                      ),
                    ],
                    child: Text.rich(
                      TextSpan(
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 15,
                          color: const Color(0xff000000),
                        ),
                        children: [
                          TextSpan(
                            text: 'Fire Service\n-',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          TextSpan(
                            text: ' ',
                            style: TextStyle(
                              color: const Color(0xffff365d),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          TextSpan(
                            text: 'Burma Camp',
                            style: TextStyle(
                              color: const Color(0xffaaaaaa),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      textHeightBehavior:
                          TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 14.5, end: 13.5),
                  Pin(size: 38.0, start: 87.5),
                  child: PageLink(
                    links: [
                      PageLinkInfo(
                        transition: LinkTransition.SlideLeft,
                        ease: Curves.easeOut,
                        duration: 0.3,
                        pageBuilder: () => XDFireStation(),
                      ),
                    ],
                    child: Text.rich(
                      TextSpan(
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 15,
                          color: const Color(0xff000000),
                        ),
                        children: [
                          TextSpan(
                            text: 'Ghana National Fire Service\n-',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          TextSpan(
                            text: ' ',
                            style: TextStyle(
                              color: const Color(0xffff365d),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          TextSpan(
                            text: 'Korle-Bu',
                            style: TextStyle(
                              color: const Color(0xffaaaaaa),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      textHeightBehavior:
                          TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 14.5, end: 13.5),
                  Pin(size: 38.0, middle: 0.4989),
                  child: PageLink(
                    links: [
                      PageLinkInfo(
                        transition: LinkTransition.SlideLeft,
                        ease: Curves.easeOut,
                        duration: 0.3,
                        pageBuilder: () => XDFireStation(),
                      ),
                    ],
                    child: Text.rich(
                      TextSpan(
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 15,
                          color: const Color(0xff000000),
                        ),
                        children: [
                          TextSpan(
                            text: 'FIRE SERVICE\n-',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          TextSpan(
                            text: ' ',
                            style: TextStyle(
                              color: const Color(0xffff365d),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          TextSpan(
                            text: 'Teshie',
                            style: TextStyle(
                              color: const Color(0xffaaaaaa),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      textHeightBehavior:
                          TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 14.5, end: 13.5),
                  Pin(size: 38.0, middle: 0.1787),
                  child: PageLink(
                    links: [
                      PageLinkInfo(
                        transition: LinkTransition.SlideLeft,
                        ease: Curves.easeOut,
                        duration: 0.3,
                        pageBuilder: () => XDFireStation(),
                      ),
                    ],
                    child: Text.rich(
                      TextSpan(
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 15,
                          color: const Color(0xff000000),
                        ),
                        children: [
                          TextSpan(
                            text: 'Ghana Fire Service Station\n- ',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          TextSpan(
                            text: 'Madina',
                            style: TextStyle(
                              color: const Color(0xffaaaaaa),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      textHeightBehavior:
                          TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 14.5, end: 13.5),
                  Pin(size: 38.0, middle: 0.5789),
                  child: Text.rich(
                    TextSpan(
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 15,
                        color: const Color(0xff000000),
                      ),
                      children: [
                        TextSpan(
                          text: 'GHANA NATIONAL FIRE SERVICE\n-',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextSpan(
                          text: ' ',
                          style: TextStyle(
                            color: const Color(0xffff365d),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextSpan(
                          text: 'industrial area',
                          style: TextStyle(
                            color: const Color(0xffaaaaaa),
                            fontWeight: FontWeight.w600,
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
                  Pin(start: 14.5, end: 13.5),
                  Pin(size: 38.0, middle: 0.2587),
                  child: PageLink(
                    links: [
                      PageLinkInfo(
                        transition: LinkTransition.SlideLeft,
                        ease: Curves.easeOut,
                        duration: 0.3,
                        pageBuilder: () => XDFireStation(),
                      ),
                    ],
                    child: Text.rich(
                      TextSpan(
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 15,
                          color: const Color(0xff000000),
                        ),
                        children: [
                          TextSpan(
                            text: 'FIRE Station\n',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          TextSpan(
                            text: '- ',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          TextSpan(
                            text: 'Dansoman',
                            style: TextStyle(
                              color: const Color(0xffaaaaaa),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      textHeightBehavior:
                          TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 14.5, end: 13.5),
                  Pin(size: 38.0, middle: 0.659),
                  child: Text.rich(
                    TextSpan(
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 15,
                        color: const Color(0xff000000),
                      ),
                      children: [
                        TextSpan(
                          text: 'FIRE SERVICE\n- ',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextSpan(
                          text: 'Adentan',
                          style: TextStyle(
                            color: const Color(0xffaaaaaa),
                            fontWeight: FontWeight.w600,
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
                  Pin(start: 14.5, end: 13.5),
                  Pin(size: 38.0, middle: 0.3388),
                  child: PageLink(
                    links: [
                      PageLinkInfo(
                        transition: LinkTransition.SlideLeft,
                        ease: Curves.easeOut,
                        duration: 0.3,
                        pageBuilder: () => XDFireStation(),
                      ),
                    ],
                    child: Text.rich(
                      TextSpan(
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 15,
                          color: const Color(0xff000000),
                        ),
                        children: [
                          TextSpan(
                            text: 'GHANA NATIONAL FIRE SERVICE \n- ',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          TextSpan(
                            text: 'Makola',
                            style: TextStyle(
                              color: const Color(0xffaaaaaa),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      textHeightBehavior:
                          TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 2.0, start: 0.0),
                  child: SvgPicture.string(
                    _svg_ah5ync,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 2.0, start: 71.0),
                  child: SvgPicture.string(
                    _svg_wq9r8y,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 2.0, middle: 0.4615),
                  child: SvgPicture.string(
                    _svg_iiojm0,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 2.0, start: 142.0),
                  child: SvgPicture.string(
                    _svg_oxwm,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 2.0, middle: 0.5385),
                  child: SvgPicture.string(
                    _svg_qf8zm,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 2.0, middle: 0.2308),
                  child: SvgPicture.string(
                    _svg_vhsqi8,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 2.0, middle: 0.6154),
                  child: SvgPicture.string(
                    _svg_tb1y,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 2.0, middle: 0.3077),
                  child: SvgPicture.string(
                    _svg_ha7iva,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 2.0, middle: 0.3846),
                  child: SvgPicture.string(
                    _svg_u9bpri,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 15.0, end: 21.5),
                  Pin(size: 15.0, start: 28.5),
                  child:
                      // Adobe XD layer: 'move-to-next' (shape)
                      Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: const AssetImage(''),
                        fit: BoxFit.fill,
                        colorFilter: new ColorFilter.mode(
                            Colors.black.withOpacity(0.3), BlendMode.dstIn),
                      ),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 15.0, end: 21.5),
                  Pin(size: 15.0, middle: 0.4214),
                  child:
                      // Adobe XD layer: 'move-to-next' (shape)
                      Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: const AssetImage(''),
                        fit: BoxFit.fill,
                        colorFilter: new ColorFilter.mode(
                            Colors.black.withOpacity(0.3), BlendMode.dstIn),
                      ),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 15.0, end: 21.5),
                  Pin(size: 15.0, start: 99.5),
                  child:
                      // Adobe XD layer: 'move-to-next' (shape)
                      Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: const AssetImage(''),
                        fit: BoxFit.fill,
                        colorFilter: new ColorFilter.mode(
                            Colors.black.withOpacity(0.3), BlendMode.dstIn),
                      ),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 15.0, end: 21.5),
                  Pin(size: 15.0, middle: 0.4995),
                  child:
                      // Adobe XD layer: 'move-to-next' (shape)
                      Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: const AssetImage(''),
                        fit: BoxFit.fill,
                        colorFilter: new ColorFilter.mode(
                            Colors.black.withOpacity(0.3), BlendMode.dstIn),
                      ),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 15.0, end: 21.5),
                  Pin(size: 15.0, middle: 0.1874),
                  child:
                      // Adobe XD layer: 'move-to-next' (shape)
                      Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: const AssetImage(''),
                        fit: BoxFit.fill,
                        colorFilter: new ColorFilter.mode(
                            Colors.black.withOpacity(0.3), BlendMode.dstIn),
                      ),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 15.0, end: 21.5),
                  Pin(size: 15.0, middle: 0.5775),
                  child:
                      // Adobe XD layer: 'move-to-next' (shape)
                      Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: const AssetImage(''),
                        fit: BoxFit.fill,
                        colorFilter: new ColorFilter.mode(
                            Colors.black.withOpacity(0.3), BlendMode.dstIn),
                      ),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 15.0, end: 21.5),
                  Pin(size: 15.0, middle: 0.2654),
                  child:
                      // Adobe XD layer: 'move-to-next' (shape)
                      Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: const AssetImage(''),
                        fit: BoxFit.fill,
                        colorFilter: new ColorFilter.mode(
                            Colors.black.withOpacity(0.3), BlendMode.dstIn),
                      ),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 15.0, end: 21.5),
                  Pin(size: 15.0, middle: 0.6555),
                  child:
                      // Adobe XD layer: 'move-to-next' (shape)
                      Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: const AssetImage(''),
                        fit: BoxFit.fill,
                        colorFilter: new ColorFilter.mode(
                            Colors.black.withOpacity(0.3), BlendMode.dstIn),
                      ),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 15.0, end: 21.5),
                  Pin(size: 15.0, middle: 0.3434),
                  child:
                      // Adobe XD layer: 'move-to-next' (shape)
                      Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: const AssetImage(''),
                        fit: BoxFit.fill,
                        colorFilter: new ColorFilter.mode(
                            Colors.black.withOpacity(0.3), BlendMode.dstIn),
                      ),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 14.5, end: 13.5),
                  Pin(size: 38.0, middle: 0.739),
                  child: Text.rich(
                    TextSpan(
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 15,
                        color: const Color(0xff000000),
                      ),
                      children: [
                        TextSpan(
                          text: 'GHANA NATIONAL FIRE SERVICE\n- ',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextSpan(
                          text: 'Amasaman',
                          style: TextStyle(
                            color: const Color(0xffaaaaaa),
                            fontWeight: FontWeight.w600,
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
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 2.0, middle: 0.6923),
                  child: SvgPicture.string(
                    _svg_h8riae,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 2.0, middle: 0.7692),
                  child: SvgPicture.string(
                    _svg_cab8,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 15.0, end: 21.5),
                  Pin(size: 15.0, middle: 0.7335),
                  child:
                      // Adobe XD layer: 'move-to-next' (shape)
                      Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: const AssetImage(''),
                        fit: BoxFit.fill,
                        colorFilter: new ColorFilter.mode(
                            Colors.black.withOpacity(0.3), BlendMode.dstIn),
                      ),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 14.5, end: 13.5),
                  Pin(size: 38.0, middle: 0.8191),
                  child: Text.rich(
                    TextSpan(
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 15,
                        color: const Color(0xff000000),
                      ),
                      children: [
                        TextSpan(
                          text: 'FIRE SERVICE\n- ',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextSpan(
                          text: 'Adjen Kotoku',
                          style: TextStyle(
                            color: const Color(0xffaaaaaa),
                            fontWeight: FontWeight.w600,
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
                  Pin(start: 14.5, end: 13.5),
                  Pin(size: 38.0, end: 89.5),
                  child: Text.rich(
                    TextSpan(
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 15,
                        color: const Color(0xff000000),
                      ),
                      children: [
                        TextSpan(
                          text: 'FIRE SERVICE\n- ',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextSpan(
                          text: 'Ashaiman',
                          style: TextStyle(
                            color: const Color(0xffaaaaaa),
                            fontWeight: FontWeight.w600,
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
                  Pin(start: 14.5, end: 13.5),
                  Pin(size: 38.0, end: 18.5),
                  child: Text.rich(
                    TextSpan(
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 15,
                        color: const Color(0xff000000),
                      ),
                      children: [
                        TextSpan(
                          text: 'FIRE SERVICE\n-',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextSpan(
                          text: ' ',
                          style: TextStyle(
                            color: const Color(0xffff365d),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextSpan(
                          text: 'Burma Camp',
                          style: TextStyle(
                            color: const Color(0xffaaaaaa),
                            fontWeight: FontWeight.w600,
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
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 2.0, end: 142.0),
                  child: SvgPicture.string(
                    _svg_r9g2wu,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 2.0, end: 71.0),
                  child: SvgPicture.string(
                    _svg_rv9ki,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 2.0, end: 0.0),
                  child: SvgPicture.string(
                    _svg_a4yux6,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 15.0, end: 21.5),
                  Pin(size: 15.0, middle: 0.8115),
                  child:
                      // Adobe XD layer: 'move-to-next' (shape)
                      Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: const AssetImage(''),
                        fit: BoxFit.fill,
                        colorFilter: new ColorFilter.mode(
                            Colors.black.withOpacity(0.3), BlendMode.dstIn),
                      ),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 15.0, end: 21.5),
                  Pin(size: 15.0, end: 100.5),
                  child:
                      // Adobe XD layer: 'move-to-next' (shape)
                      Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: const AssetImage(''),
                        fit: BoxFit.fill,
                        colorFilter: new ColorFilter.mode(
                            Colors.black.withOpacity(0.3), BlendMode.dstIn),
                      ),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 15.0, end: 21.5),
                  Pin(size: 15.0, end: 29.5),
                  child:
                      // Adobe XD layer: 'move-to-next' (shape)
                      Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: const AssetImage(''),
                        fit: BoxFit.fill,
                        colorFilter: new ColorFilter.mode(
                            Colors.black.withOpacity(0.3), BlendMode.dstIn),
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
                  Pin(size: 156.0, middle: 0.5027),
                  Pin(size: 24.0, middle: 0.4745),
                  child: Text(
                    'Fire stations',
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
                        pageBuilder: () => XDAccount(),
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
                        transition: LinkTransition.PushRight,
                        ease: Curves.easeOut,
                        duration: 0.3,
                        pageBuilder: () => XDHome(),
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
const String _svg_u9bpri =
    '<svg viewBox="10.5 487.5 394.0 2.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="11"/></filter></defs><path transform="translate(10.5, 487.5)" d="M 0 0 L 394 2" fill="none" stroke="#aaaaaa" stroke-width="1" stroke-opacity="0.25" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_h8riae =
    '<svg viewBox="10.5 771.5 394.0 2.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="11"/></filter></defs><path transform="translate(10.5, 771.5)" d="M 0 0 L 394 2" fill="none" stroke="#aaaaaa" stroke-width="1" stroke-opacity="0.25" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_cab8 =
    '<svg viewBox="10.5 842.5 394.0 2.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="11"/></filter></defs><path transform="translate(10.5, 842.5)" d="M 0 0 L 394 2" fill="none" stroke="#aaaaaa" stroke-width="1" stroke-opacity="0.25" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_r9g2wu =
    '<svg viewBox="10.5 913.5 394.0 2.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="11"/></filter></defs><path transform="translate(10.5, 913.5)" d="M 0 0 L 394 2" fill="none" stroke="#aaaaaa" stroke-width="1" stroke-opacity="0.25" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_rv9ki =
    '<svg viewBox="10.5 984.5 394.0 2.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="11"/></filter></defs><path transform="translate(10.5, 984.5)" d="M 0 0 L 394 2" fill="none" stroke="#aaaaaa" stroke-width="1" stroke-opacity="0.25" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_a4yux6 =
    '<svg viewBox="10.5 1055.5 394.0 2.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="11"/></filter></defs><path transform="translate(10.5, 1055.5)" d="M 0 0 L 394 2" fill="none" stroke="#aaaaaa" stroke-width="1" stroke-opacity="0.25" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_xrtap1 =
    '<svg viewBox="-2.1 1.0 416.7 106.2" ><defs><filter id="shadow"><feDropShadow dx="0" dy="0" stdDeviation="20"/></filter></defs><path transform="matrix(-1.0, 0.0, 0.0, -1.0, 488.58, 107.19)" d="M 283 0 C 364.8994140625 0 438.6732177734375 15.67381381988525 490.612548828125 40.85432815551758 C 490.700439453125 42.3636474609375 490.612548828125 106.1885986328125 490.612548828125 106.1885986328125 L 73.92830657958984 106.1885986328125 C 73.92830657958984 106.1885986328125 75.03295135498047 42.75042724609375 73.92830657958984 41.56906127929688 C 125.6383438110352 16.03481292724609 200.1628112792969 0 283 0 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_t3otl =
    '<svg viewBox="-2.1 630.8 416.7 106.2" ><defs><filter id="shadow"><feDropShadow dx="0" dy="0" stdDeviation="20"/></filter></defs><path transform="translate(-76.0, 630.81)" d="M 283 0 C 364.8994140625 0 438.6732177734375 15.67381381988525 490.612548828125 40.85432815551758 C 490.700439453125 42.3636474609375 490.612548828125 106.1885986328125 490.612548828125 106.1885986328125 L 73.92830657958984 106.1885986328125 C 73.92830657958984 106.1885986328125 75.03295135498047 42.75042724609375 73.92830657958984 41.56906127929688 C 125.6383438110352 16.03481292724609 200.1628112792969 0 283 0 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
