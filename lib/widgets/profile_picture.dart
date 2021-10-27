import 'package:fire_service/models/user_model.dart';
import 'package:fire_service/views/profile/avatar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fire_service/Strings/strings.dart';


import '../locator.dart';

class ProfilePicture extends StatefulWidget {
  const ProfilePicture({Key? key}) : super(key: key);

  static String route = "profile-view";

  @override
  State<ProfilePicture> createState() => _ProfilePictureState();
}

class _ProfilePictureState extends State<ProfilePicture> {
  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    // UserModel _currentUser = locator.get<UserController>().currentUser;

    return Container(
      width: 150,
      height:150,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(300),
        border: Border.all(color: blue, style: BorderStyle.solid),
      ),
      child: Avatar(
        avatarUrl: "assets/img/2.png",
        onTap: () {},
      ),



      // ClipRRect(
      //     clipBehavior: Clip.antiAlias,
      //     borderRadius: BorderRadius.circular(10.0),
      //     child: Image.asset('assets/img/fireStations.png')),
    );
  }
}
