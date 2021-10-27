import 'package:fire_service/repository/auth_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_icons/flutter_icons.dart';

import '../locator.dart';
import 'home/external_sign_in_buttons.dart';
import 'home_view.dart';

class LoginView extends StatefulWidget {
  static String route = "login";

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  var emailController = TextEditingController(text: "test@test.com");
  var passwordController = TextEditingController(text: "123456");

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return Scaffold(
      // resizeToAvoidBottomPadding: false,
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage("https://source.unsplash.com/random"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Color(0x30000000),
            backgroundBlendMode: BlendMode.darken,
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                SizedBox(height: 20.0),
                Center(
                  child: CircleAvatar(
                    backgroundColor: const Color(0x00000000),
                    backgroundImage: AssetImage("assets/img/1.png"),
                    radius: 50.0,
                  ),
                ),
                SizedBox(height: 50.0),
                Expanded(
                  child: Container(),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
