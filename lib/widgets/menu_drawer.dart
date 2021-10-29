import 'package:fire_service/login/login.dart';
import 'package:fire_service/xd/xd_terms_conditions_alert.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_drawer/simple_drawer.dart';

class MenuDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    // Widget bottomSimpleDrawer = SimpleDrawer(
    //   child: Container(
    //     // round the corners & set color
    //     decoration: BoxDecoration(
    //       borderRadius: BorderRadius.only(
    //           topLeft: Radius.circular(20), topRight: Radius.circular(20)),
    //       color: Colors.green,
    //     ),
    //     width: MediaQuery.of(context).size.width,
    //     height: 300,
    //   ),
    //   childHeight: 300,
    //   direction: Direction.bottom,
    //   id: "bottom",
    // );


    final bold_red = GoogleFonts.montserrat(fontStyle:FontStyle.normal, fontSize: 18, fontWeight: FontWeight.w500, color: const Color(0xffff365d));
    final title = GoogleFonts.montserrat(fontStyle: FontStyle.normal, fontSize: 30, fontWeight: FontWeight.w800, letterSpacing: 2, color: const Color(0xff000000));
    final bold_black = GoogleFonts.montserrat(fontStyle: FontStyle.normal, fontSize: 15, fontWeight: FontWeight.w500, color: const Color(0xff000000));
    final normal_red = GoogleFonts.montserrat(fontStyle: FontStyle.normal, fontSize: 15, fontWeight: FontWeight.w400, color: const Color(0xffff365d));
    final normal_black = GoogleFonts.montserrat(fontStyle: FontStyle.normal, fontSize: 13, fontWeight: FontWeight.w400, color: const Color(0xffaaaaaa));

    return Stack(
        children: [
          Container(
            height: height,
            width: width*0.70,
            // color: Colors.white,
            decoration: BoxDecoration(
              color: Colors.white,
                boxShadow: [
                BoxShadow(
                  color: const Color(0xffff365d),
                  offset: Offset(0, 0),
                  blurRadius: 20,
                )
                ]
            ),
            child: Container(
              margin: EdgeInsets.only(bottom: 300, left: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                SizedBox(height: 200),
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
                ),PageLink(
                  links: [
                    PageLinkInfo(
                      transition: LinkTransition.SlideRight,
                      ease: Curves.easeOut,
                      duration: 0.3,
                      pageBuilder: () => XDTermsConditionsAlert(),
                    ),
                  ],
                  child: Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.logout),
                        onPressed: () async {
                          await FirebaseAuth.instance.signOut();
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(builder: (context) => Login()),
                                  (route) => false);
                        },
                      ),
                      Text(
                          'SignOut',
                          style: bold_black
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ),),
          ],
    );
  }
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   uid = FirebaseAuth.instance.currentUser.uid;
  // }
}
