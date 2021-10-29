import 'package:fire_service/Strings/strings.dart';
import 'package:flutter/material.dart';

// class Colors extends StatelessWidget {
//   const Colors({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         _buildBackgroundColorChooser(),
//       ],
//     );
//   }
import 'package:fire_service/bg/alert_call.dart';
import 'package:fire_service/bg/home.dart';
import 'package:fire_service/map/get_user_location.dart';
import 'package:fire_service/screens/timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ChangeColor extends StatefulWidget {
  const ChangeColor({Key? key}) : super(key: key);

  @override
  State<ChangeColor> createState() => _ChangeColorState();
}

class _ChangeColorState extends State<ChangeColor> {

  Color backgroundColor = Colors.pink;

  @override
  void _setBackgroundColor(Color newColor) {
    if (newColor != backgroundColor) {
      setState(() {
        backgroundColor = newColor;
      });
    }
  }

  @override
  Widget build(BuildContext context) {

    return DecoratedBox(
      decoration: BoxDecoration(
        color: backgroundColor,
      ),
      child: Stack(
        children: [
          buildBackgroundColorChooser(),
        ],
      ),
    );
  }


  Widget buildBackgroundColorChooser() {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildBackgroundChangeColorDot(
                  color: Colors.blue,
                ),
                buildBackgroundChangeColorDot(
                  color: Colors.red,
                ),
                buildBackgroundChangeColorDot(
                  color: Colors.yellow,
                ),
              ],
            )
        )
    );
  }

  Widget buildBackgroundChangeColorDot({required Color color}) {
    return GestureDetector(
      onTap: () {
        _setBackgroundColor(color);
      },
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color,
              border: Border.all(color: white, width: 3),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.4),
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                )
              ]
          ),
        ),
      ),
    );
  }
  // Widget buildBackgroundChangeColorDot({required Color color}) {
  //   return GestureDetector(
  //     onTap: () {
  //       _setBackgroundColor(color);
  //     },
  //     child: Padding(
  //       padding: const EdgeInsets.all(3.0),
  //       child: Container(
  //         width: 50,
  //         height: 50,
  //         decoration: BoxDecoration(
  //             shape: BoxShape.circle,
  //             color: color,
  //             border: Border.all(color: Colors.white, width: 3),
  //             boxShadow: [
  //               BoxShadow(
  //                 color: Colors.black.withOpacity(0.4),
  //                 blurRadius: 5,
  //                 offset: const Offset(0, 3),
  //               )
  //             ]
  //         ),
  //       ),
  //     ),
  //   );
  // }
}