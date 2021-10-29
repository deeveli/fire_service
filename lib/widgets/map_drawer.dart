import 'package:fire_service/Strings/strings.dart';
import 'package:fire_service/login/login.dart';
import 'package:fire_service/map/map.dart';
import 'package:fire_service/xd/xd_terms_conditions_alert.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_drawer/simple_drawer.dart';

import 'app_bar.dart';
import 'bottom_bar.dart';

class MapDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    Widget bottomSimpleDrawer = SimpleDrawer(
      child: Container(
          width: width,
          height: height*0.9999,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(100),
                topRight: Radius.circular(100))
          ),
          child: MapScreen()
      ),
      childHeight: height,
      direction: Direction.bottom,
      id: "bottom",
    );

    return Positioned(
            bottom: 150,
            left: width*0.5,
            child: InkWell(
              onTap: SimpleDrawer.activate("bottom"),
              child: Text("bottom", style: normalBlack)),
    );
  }
}

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   uid = FirebaseAuth.instance.currentUser.uid;
  // }

