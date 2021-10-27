import 'package:fire_service/Strings/strings.dart';
import 'package:fire_service/widgets/sos_button.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
}

class CallTimer extends StatefulWidget {
  const CallTimer({Key? key}) : super(key: key);

  @override

  _CallTimerState createState() => _CallTimerState();
}

class _CallTimerState extends State<CallTimer> {
  int start = 5;
  bool wait = false;
  final sosButton = SOS();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    final callTimer = GoogleFonts.montserrat(fontStyle:FontStyle.normal, fontSize: 60, fontWeight: FontWeight.w600, color: red);

    return Text("0$start", style: callTimer);
  }
}
