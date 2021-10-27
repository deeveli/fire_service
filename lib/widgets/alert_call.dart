import 'package:fire_service/Strings/strings.dart';
import 'package:fire_service/bg/alert_call.dart';
import 'package:fire_service/bg/home.dart';
import 'package:fire_service/map/get_user_location.dart';
import 'package:fire_service/screens/timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Call extends StatelessWidget {
  const Call({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  width: width*0.8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: white,
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x26000000), offset: Offset(0, 0),
                        blurRadius: 20,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(30,20,30,20),
                    child: Column(
                      children: [
                        Text('Alerting Fire Service…',
                          style: boldRed,
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 5.0),
                        Text('Your location coordinates are:',
                          style: normalBlack,
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 5.0),
                        SizedBox(height: 5.0),
                        // Text(
                        //     "$currentLocation", style: smallGrey,
                        //   style: smallGrey,
                        //   textAlign: TextAlign.center,
                        // ),
                      ],
                    ),
                  )
              ),
            ],
          ),
        ),

    );
  }
}

const String _svg_top =
    '<svg viewBox="-2.1 1.0 416.7 106.2" ><defs><filter id="shadow"><feDropShadow dx="0" dy="0" stdDeviation="20"/></filter></defs><path transform="matrix(-1.0, 0.0, 0.0, -1.0, 488.58, 107.19)" d="M 283 0 C 364.8994140625 0 438.6732177734375 15.67381381988525 490.612548828125 40.85432815551758 C 490.700439453125 42.3636474609375 490.612548828125 106.1885986328125 490.612548828125 106.1885986328125 L 73.92830657958984 106.1885986328125 C 73.92830657958984 106.1885986328125 75.03295135498047 42.75042724609375 73.92830657958984 41.56906127929688 C 125.6383438110352 16.03481292724609 200.1628112792969 0 283 0 Z" fill="#21D3FF" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
