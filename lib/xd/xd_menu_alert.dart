import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './xd_terms_conditions_alert.dart';
import 'package:adobe_xd/page_link.dart';

class XDMenuAlert extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 0.0, end: 64.0),
            Pin(start: 0.0, end: 0.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
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
          Pinned.fromPins(
            Pin(size: 25.0, middle: 0.7),
            Pin(size: 25.0, start: 35.0),
            child:
                // Adobe XD layer: 'closeMenu' (shape)
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
            Pin(size: 160.0, start: 30.0),
            Pin(size: 19.0, middle: 0.2524),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.SlideRight,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => XDTermsConditionsAlert(),
                ),
              ],
              child: Text(
                'Terms & Conditions',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 16,
                  color: const Color(0xff000000),
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 91.0, start: 30.0),
            Pin(size: 19.0, middle: 0.3208),
            child: Text(
              'Contact Us',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 16,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 104.0, start: 30.0),
            Pin(size: 19.0, middle: 0.3891),
            child: Text(
              'Report Issue',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 16,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 82.0, middle: 0.6324),
            Pin(size: 32.0, end: 20.0),
            child: Text(
              '\nVersion 1.0.0',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 13,
                color: const Color(0xffaaaaaa),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(start: -544.0, end: 296.0),
            Pin(size: 24.0, middle: 0.6671),
            child: Text(
              'Ghana Fire Service (University of Ghana Station)',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 16,
                color: const Color(0xffff365d),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(start: -544.0, end: 329.0),
            Pin(size: 24.0, end: 12.0),
            child: Text(
              'Ghana National Fire Service - Industrial Area',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 16,
                color: const Color(0xffff365d),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(start: -544.0, end: 333.0),
            Pin(size: 24.0, end: 109.0),
            child: Text(
              'Ghana National Fire Service - Makola Station',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 16,
                color: const Color(0xffff365d),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}
