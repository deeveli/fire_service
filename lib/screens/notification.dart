import 'package:fire_service/bg/home.dart';
import 'package:fire_service/widgets/app_bar.dart';
import 'package:fire_service/widgets/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'account.dart';
import 'fire_station.dart';

class Notifications extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          SizedBox(height: 40,),
          Center(child: Text("Notification")),
          AppBarNav(),
          BottomBar(),
        ],
      ),
    );
  }
}

