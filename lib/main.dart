import 'package:fire_service/bg/alert_bg.dart';
import 'package:fire_service/bg/menu_alert.dart';
import 'package:fire_service/bg/terms_conditions.dart';
import 'package:fire_service/map/map.dart';
import 'package:fire_service/screens/account.dart';
import 'package:fire_service/login/login.dart';
import 'package:fire_service/onboard/onboarding.dart';
import 'package:fire_service/screens/emergency_map.dart';
import 'package:fire_service/test/test_color.dart';
import 'package:fire_service/views/profile_view.dart';
import 'package:fire_service/widgets/app_bar.dart';
import 'package:fire_service/widgets/map_drawer.dart';
import 'package:fire_service/widgets/sos_button.dart';
import 'package:fire_service/xd/xd_account.dart';
import 'package:fire_service/xd/xd_alert_call.dart';
import 'package:fire_service/xd/xd_alert_mode.dart';
import 'package:fire_service/xd/xd_home.dart';
import 'package:fire_service/xd/xd_splash.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'Strings/change_color.dart';
import 'Strings/strings.dart';
import 'bg/alert_call.dart';
import 'bg/home.dart';
import 'locator.dart';
import 'login/replace.dart';
import 'map/get_user_location.dart';
import 'widgets/alert_call.dart';
import 'widgets/alert_state.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  setupServices();
  runApp(
      MaterialApp(
        title: "Fire Service",
        home: MyApp(),
        debugShowCheckedModeBanner: false,
      )
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      title: '192',
      theme: ThemeData(
        primaryColor: Colors.cyan,
        primarySwatch: Colors.cyan,
        primaryColorDark: Colors.redAccent,
        splashColor: Colors.redAccent,
        accentColor: Colors.red,
        fontFamily: 'Montserrat',
      ),
      home: OnBoarding(),
      // home: MapScreen(),
    );
  }
}

