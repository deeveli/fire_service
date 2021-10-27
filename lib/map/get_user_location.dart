import 'package:fire_service/Strings/strings.dart';
import 'package:fire_service/widgets/sos_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

class UserLocation extends StatefulWidget {
  const UserLocation({Key? key}) : super(key: key);

  @override
  _UserLocationState createState() => _UserLocationState();
}

class _UserLocationState extends State<UserLocation> {


  String currentAddress = "";
  // Position currentPosition;

  // Future<Position> getPosition() async{
  //   bool serviceEnabled;
  //   LocationPermission permission;
  //
  //   serviceEnabled = await Geolocator.isLocationServiceEnabled();
  //   if(!serviceEnabled){
  //     Fluttertoast.showToast(msg: " Please turn on location for device.");
  //   }
  //   permission = await Geolocator.checkPermission();
  //   if(permission == LocationPermission.denied){
  //     Fluttertoast.showToast(msg: " Location Permission is denied.");
  //   }
  //   permission = await Geolocator.checkPermission();
  //   if(permission == LocationPermission.deniedForever){
  //     Fluttertoast.showToast(msg: " Location Permission is denied forever.");
  //   }
    // Position position = await Geolocator.getCurrentPosition(
    // desiredAccuracy: LocationAccuracy.high
    // );
  //   try{
  //     List<Placemark>placeMark = await placemarkFromCoordinates(position.latitude, position.longitude);
  //     Placemark place = placeMark[0];
  //
  //     setState((){
  //       // currentPosition = position;
  //       currentAddress = "${place.street},\n${place.locality}, ${place.country}";
  //     });
  //   }
  //   catch(e){
  //     print(e);
  //   }
  // }


  var currentLocation= "";
  // // var currentLatLocation= "";
  // // var currentLongLocation= "";
  //
  void getCurrentLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if(!serviceEnabled){
      Fluttertoast.showToast(msg: " Please turn on location for device.");
    }
    permission = await Geolocator.checkPermission();
    if(permission == LocationPermission.denied){
      Fluttertoast.showToast(msg: " Location Permission is denied.");
    }
    permission = await Geolocator.checkPermission();
    if(permission == LocationPermission.deniedForever){
      Fluttertoast.showToast(msg: " Location Permission is denied forever.");
    }

    var position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    var lastPosition = await Geolocator.getLastKnownPosition();
    print(lastPosition);
    var lat = position.latitude;
    var long = position.longitude;
    print("$lat, $long");

    setState((){
      currentLocation = "Lat: $lat, Long: $long";
      // currentLatLocation = "Lat: $lat";
      // currentLongLocation = "Long: $long";
    });
    try{
      List<Placemark>placeMark = await placemarkFromCoordinates(position.latitude, position.longitude);
      Placemark place = placeMark[0];

      setState((){
        // currentPosition = position;
        currentAddress = "${place.street},\n${place.locality}, ${place.country}";
      });
    }
    catch(e){
      print(e);
    }
    print("$currentAddress");
  }

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
            Text("$currentLocation", style: smallGrey),
            Text("$currentAddress", style: smallBlack),
            SizedBox(height: height*0.04),
            FlatButton(onPressed: () {
              // getCurrentLocation();
              getCurrentLocation();
            },
            child: SOS(),),
          ],
        ),
      ),
    );
  }
}
