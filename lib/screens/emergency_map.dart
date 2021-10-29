import 'dart:async';

import 'package:fire_service/widgets/app_bar.dart';
import 'package:fire_service/widgets/bottom_bar.dart';
import 'package:fire_service/widgets/map_drawer.dart';
import 'package:fire_service/widgets/menu_drawer.dart';
import 'package:flutter/material.dart';
import 'package:simple_drawer/simple_drawer.dart';

class AlertMap extends StatelessWidget {



  @override
  Widget build(BuildContext context) {

    return Stack(
        children: [
          // MapDrawer(),
          SimpleDrawer(),
        ],
    );
  }

}


