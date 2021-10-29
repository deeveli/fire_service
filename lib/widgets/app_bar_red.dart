import 'package:adobe_xd/page_link.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:fire_service/Strings/strings.dart';
import 'package:fire_service/bg/menu_alert.dart';
import 'package:fire_service/login/login_unbording.dart';
import 'package:fire_service/widgets/menu_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppBarRed extends StatelessWidget {
  const AppBarRed({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Pinned.fromPins(
      Pin(start: 0, end: 0),
      Pin(size: 125, start: 0.0),
      child:
      // Adobe XD layer: 'AppBar' (group)
      Stack(
        children: <Widget>[
          Positioned(top: 0, right: 0,            child: Container(
              child: Stack(
                  children:[
                    CustomPaint(
                        size: Size(width, 80), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                        painter: AppBarPainterRed()
                    ),
                  ]
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 45.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Fire Service', style: titleWhite,),
                SizedBox(height: 0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.local_fire_department, color: white, size: 30,),
                    SizedBox(width: 2),
                    Text("192", style: titleWhite),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


class AppBarPainterRed extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint path2_fill = Paint()..style=PaintingStyle.fill;
    path2_fill.color = const Color(0xfffc617e).withOpacity(1.0);

    Path path2 = Path()..moveTo(0,100);
    path2.quadraticBezierTo(size.width*0.5, 170, size.width, 100);
    path2.lineTo(size.width*1, 0);
    path2.lineTo(size.width*0, 0);
    path2.close();


    canvas.drawShadow(path2, black, 5, true);
    canvas.drawPath(path2,path2_fill);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

// const String _svg_top =
//     '<svg viewBox="-2.1 1.0 416.7 106.2" ><defs><filter id="shadow"><feDropShadow dx="0" dy="0" stdDeviation="20"/></filter></defs><path transform="matrix(-1.0, 0.0, 0.0, -1.0, 488.58, 107.19)" d="M 283 0 C 364.8994140625 0 438.6732177734375 15.67381381988525 490.612548828125 40.85432815551758 C 490.700439453125 42.3636474609375 490.612548828125 106.1885986328125 490.612548828125 106.1885986328125 L 73.92830657958984 106.1885986328125 C 73.92830657958984 106.1885986328125 75.03295135498047 42.75042724609375 73.92830657958984 41.56906127929688 C 125.6383438110352 16.03481292724609 200.1628112792969 0 283 0 Z" fill="#21D3FF" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';

