import 'package:fire_service/widgets/profile_picture.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class HomeView extends StatelessWidget {
  static String route = "home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
      appBar: AppBar(
        title: Text("Home Screen"),
        actions: <Widget>[
          IconButton(
            icon: Icon(FontAwesome5.user),
            onPressed: () {
              Navigator.pushNamed(context, ProfilePicture.route);
            },
          )
        ],
      ),
    );
  }
}
