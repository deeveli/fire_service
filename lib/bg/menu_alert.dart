import 'package:fire_service/xd/xd_terms_conditions_alert.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuAlert extends StatelessWidget {

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
      body: Stack(
        children: <Widget>[
          Container(
            height: height,
            width: width*0.6,
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
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: const AssetImage(''),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 300, left: 40),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      PageLink(
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
                            style: bold_black
                        ),
                      ),
                      SizedBox(height: 25,),
                      PageLink(
                        links: [
                          PageLinkInfo(
                            transition: LinkTransition.SlideRight,
                            ease: Curves.easeOut,
                            duration: 0.3,
                            pageBuilder: () => XDTermsConditionsAlert(),
                          ),
                        ],
                        child: Text(
                            'Contact Us',
                            style: bold_black
                        ),
                      ),
                      SizedBox(height: 25,),
                      PageLink(
                        links: [
                          PageLinkInfo(
                            transition: LinkTransition.SlideRight,
                            ease: Curves.easeOut,
                            duration: 0.3,
                            pageBuilder: () => XDTermsConditionsAlert(),
                          ),
                        ],
                        child: Text(
                            'Report Issue',
                            style: bold_black
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 40, bottom: 30),
                          child: Text(
                            '\nVersion 1.0.0',
                            style: normal_black
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
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
