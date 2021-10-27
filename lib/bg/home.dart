import 'dart:async';

import 'package:fire_service/Strings/change_color.dart';
import 'package:fire_service/Strings/strings.dart';
import 'package:fire_service/map/get_user_location.dart';
import 'package:fire_service/screens/fire_station.dart';
import 'package:fire_service/screens/notification.dart';
import 'package:fire_service/widgets/app_bar.dart';
import 'package:fire_service/widgets/bottom_bar.dart';
import 'package:fire_service/widgets/dot_indicator.dart';
import 'package:fire_service/widgets/menu_drawer.dart';
import 'package:fire_service/widgets/sos_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:adobe_xd/page_link.dart';

import 'alert_bg.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);


  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int start = 5;
  bool wait = false;
  bool tap = false;

  // Color  colorChange = ChangeColor.backgroundColor;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      drawer: MenuDrawer(),
      backgroundColor: white,
      body: Stack(
        children: <Widget>[
          PageView(
            children: [
              FireStations(),
              Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell( onTap: (){
                    startTimer();
                  },
                    child: FlatButton(
                      child: SOS(),
                      onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (_)=> AlertMode()));
                          // getCurrentLocation();
                        },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(1000)
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                  Container(
                    width: width*0.75,
                    child: Column(
                      children: [
                        Text(
                          'TAP BUTTON!', style: boldRed, textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 5,),
                        Text(
                          'After pressing the SOS button, you will get help in 5 - 10 minutes',
                          style: normalGrey, textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),

                ],

              ),
            ),
              Notifications(),
            ]
          ),
          AppBarNav(),
          BottomBar(),
        ],
      ),
    );
  }

  void startTimer() {
    const onsec = Duration(seconds: 1);
    Timer _timer = Timer.periodic(onsec, (timer){
      if(start == 0){
        setState((){
          timer.cancel();
        });
      } else {
        setState((){
          start--;
        });
      }
    });
  }
}
