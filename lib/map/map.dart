import 'package:fire_service/Strings/strings.dart';
import 'package:fire_service/widgets/app_bar.dart';
import 'package:fire_service/widgets/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'directions.dart';
import 'directions_repository.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  static const _initialCameraPosition = CameraPosition(
    target: LatLng(37.773972, -122.431297),
    zoom: 11.5,
  );

  GoogleMapController? _googleMapController;
  Marker? _origin;
  Marker? _destination;
  Directions? _info;

  @override
  void dispose() {
    _googleMapController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            myLocationButtonEnabled: false,
            zoomGesturesEnabled: true,
            zoomControlsEnabled: false,

            initialCameraPosition: _initialCameraPosition,
            onMapCreated: (controller) => _googleMapController = controller,
            markers: {
              if (_origin != null) _origin!,
              if (_destination != null) _destination!,
            },
            polylines: {
              if(_info != null)
                Polyline(
                  polylineId: const PolylineId('overview_plyline'),
                  color: red,
                  width: 3,
                  points: _info!.polylinePoints
                      .map((e) => LatLng(e.latitude, e.longitude))
                      .toList(),
                ),
            },
            onLongPress: _addMarker,
          ),
          if (_info != null)
            Positioned(
              bottom: 50.0,
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 12.0),
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(20.0),
                  // boxShadow: const [
                  //   BoxShadow(
                  //     color: black,
                  //     offset: Offset(0, -2),
                  //     blurRadius: 6.0,
                  //   ),
                  // ]
                ),
                child: Text(
                  '${_info!.totalDistance}, ${_info!.totalDuration}',
                  style: normalBlack,
                  ),
                ),
              ),
          // AppBarNav(),
          // BottomBar(),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 100.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FloatingActionButton(
                backgroundColor: Colors.white,
                foregroundColor: Colors.grey,
                onPressed: () => _googleMapController!.animateCamera(
                  _info != null
                    ? CameraUpdate.newLatLngBounds(_info!.bounds, 100.0)
                    : CameraUpdate.newCameraPosition(
                       _initialCameraPosition,
                    )),
                child: const Icon(Icons.center_focus_strong, color: Colors.black,),
              ),
            ),
            if (_origin != null)
              Padding(
              padding: const EdgeInsets.all(8.0),
              child: FloatingActionButton(
                backgroundColor: Colors.white,
                foregroundColor: Colors.grey,
                onPressed: () => _googleMapController!.animateCamera(
                    CameraUpdate.newCameraPosition(
                      CameraPosition(target: _origin!.position, zoom: 14.5, tilt: 50.0)
                    )),

                child: const Icon(Icons.center_focus_strong, color: Colors.black,),
              ),
            ),
            if (_destination != null)
            FloatingActionButton(
              backgroundColor: Colors.white,
              foregroundColor: Colors.grey,
              onPressed: () => _googleMapController!.animateCamera(
                  CameraUpdate.newCameraPosition(
                      CameraPosition(target: _destination!.position, zoom: 14.5, tilt: 50.0)
                  )),

              child: const Icon(Icons.center_focus_strong, color: Colors.black,),
            ),
          ],
        ),
      ),
    );
}
  void _addMarker(LatLng pos) async {
    if(_origin == null || (_origin != null && _destination != null)) {
      setState((){
        _origin = Marker(
          markerId: const MarkerId('origin'),
          infoWindow: const InfoWindow(title: "Origin"),
          icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
          position: pos,
        );
        //reset states
        _destination = null;
        _info = null;
      });
    }else{
      setState((){
        _destination = Marker(
          markerId: const MarkerId('destination'),
          infoWindow: const InfoWindow(title: "Destination"),
          icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
          position: pos,
        );
       });

      //get directions
      final directions = await DirectionsRepository()
      .getDirections(origin: _origin!.position, destination: pos);
      setState(() => _info = directions);
    }
  }
}
