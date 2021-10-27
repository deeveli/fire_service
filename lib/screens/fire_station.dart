import 'package:fire_service/bg/home.dart';
import 'package:fire_service/screens/notification.dart';
import 'package:fire_service/widgets/app_bar.dart';
import 'package:fire_service/widgets/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:adobe_xd/page_link.dart';


import 'package:flutter_svg/flutter_svg.dart';

import 'account.dart';

class FireStations extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Center(child: Text("Fire Station")),
          // AppBarNav(),
          // BottomBar(),
        ],
      ),
    );
  }
}
