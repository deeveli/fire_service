import 'package:fire_service/Strings/strings.dart';
import 'package:fire_service/bg/alert_call.dart';
import 'package:fire_service/bg/home.dart';
import 'package:fire_service/screens/timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Alert extends StatefulWidget {
  const Alert({Key? key}) : super(key: key);



  @override
  State<Alert> createState() => _AlertState();
}

class _AlertState extends State<Alert> {

  // Future<Color> _newBackgroundColor();
  //
  // @override
  // class _newBackgroundColor{(){
  //
  // }
  //
  // }

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height:20.0),
              Container(
                width: width*0.8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: white,
                  boxShadow: [
                    BoxShadow(
                      color: shadowColor,
                      offset: Offset(0, 0),
                      blurRadius: 20,
                    ),
                  ],
                ),
                child:
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Alerting Fire Service…',
                        style: boldRed,
                        textAlign: TextAlign.center,
                      ),
                      // SizedBox(height: 10.0),
                      // Text(
                      //   'Mr. Calix,',
                      //   style: normalBlack,
                      //   textAlign: TextAlign.center,
                      // ),
                      // Text(
                      //   'you are about to\ncall national fire service.',
                      //   style: tinyBlack,
                      //   textAlign: TextAlign.center,
                      // ),
                      SizedBox(height: 10,),
                      Text(
                        'This call will start automatically in:',
                        style: smallBlack,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 10.0),
                      CallTimer(),
                      SizedBox(height: 10.0),
                      Text(
                        'Your location coordinates are:',
                        style: smallBlack,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 5.0),
                      Row(
                        children: [
                          Expanded(
                              child: Container(
                                height: 1,
                                color: Colors.black26,
                              )),
                        ],
                      ),
                      SizedBox(height: 5.0),
                      // UserLocation(),
                      // Text(
                      //   'Lat: 5.57888  |  Long: -0.23261',
                      //   style: smallGrey,
                      //   textAlign: TextAlign.center,
                      // ),
                      Text(
                        'Sam Street, Accra,',
                        style: smallGrey,
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'GA, Ghana',
                        style: smallGrey,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 20.0),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: red,
                          boxShadow: [
                            BoxShadow(
                              color: shadowColor,
                              offset: Offset.zero,
                              blurRadius: 15,
                            ),
                          ],
                        ),
                        child: FlatButton(
                          child: Text('ALERT NOW!', style: buttonWhite, textAlign: TextAlign.center),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (_)=> AlertCall()));
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(1000)
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: height*0.03,),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: white,
                  boxShadow: [
                    BoxShadow(
                      color: shadowColor,
                      offset: Offset.zero,
                      blurRadius: 15,
                    ),
                  ],
                ),
                child: FlatButton(
                  child: Text('CANCEL', style: normalRed),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=> Home()));
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(1000)
                  ),
                ),
              ),
            ],

        )
    );
  }
}

const String _svg_top =
    '<svg viewBox="-2.1 1.0 416.7 106.2" ><defs><filter id="shadow"><feDropShadow dx="0" dy="0" stdDeviation="20"/></filter></defs><path transform="matrix(-1.0, 0.0, 0.0, -1.0, 488.58, 107.19)" d="M 283 0 C 364.8994140625 0 438.6732177734375 15.67381381988525 490.612548828125 40.85432815551758 C 490.700439453125 42.3636474609375 490.612548828125 106.1885986328125 490.612548828125 106.1885986328125 L 73.92830657958984 106.1885986328125 C 73.92830657958984 106.1885986328125 75.03295135498047 42.75042724609375 73.92830657958984 41.56906127929688 C 125.6383438110352 16.03481292724609 200.1628112792969 0 283 0 Z" fill="#21D3FF" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
