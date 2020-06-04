import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class CreateMap extends StatefulWidget {
  CreateMap({Key key, this.name, this.kGooglePlex});

  //CameraPosition kGooglePlex;
  final String name;
  CameraPosition kGooglePlex;
  GoogleMapController controller;

  @override
  _CreateMapState createState() => _CreateMapState(
        name: name,
        kGooglePlex: kGooglePlex,
      );
}

class _CreateMapState extends State<CreateMap> {
  _CreateMapState({Key key, this.name, this.kGooglePlex});

  final String name;
  CameraPosition kGooglePlex;
  Location location = Location();

  GoogleMapController controller;

  Set<Marker> _markers = HashSet<Marker>();

  void cameraMove(CameraPosition cp) {
    kGooglePlex = kGooglePlex;
  }

  void _onMapCreated() {
    _markers.add(
      Marker(
        markerId: MarkerId(name),
        position: kGooglePlex.target,
        infoWindow: InfoWindow(title: name),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
      ),
    );
  }

  void cameraChange() {
    if (name == "Afrika") {
      kGooglePlex = CameraPosition(
        target: LatLng(1.36111, 18.55583),
        zoom: 0.0000000000000000000000000000000000000000000000000000000001,
      );
    } else if (name == "Avrupa") {
      kGooglePlex = CameraPosition(
        target: LatLng(55.36111, 18.55583),
        zoom: 2.0,
      );
    } else if (name == "Asya") {
      kGooglePlex = CameraPosition(
        target: LatLng(55.36111, 80.55583),
        zoom: 1.0,
      );
    } else if (name == "Kuzey Amerika") {
      kGooglePlex = CameraPosition(
        target: LatLng(50.36111, -100.55583),
        zoom: 1.9,
      );
    } else if (name == "Güney Amerika") {
      kGooglePlex = CameraPosition(
        target: LatLng(-20.36111, -60.55583),
        zoom: 1.0,
      );
    } else if (name == "Avusturalya") {
      kGooglePlex = CameraPosition(
        target: LatLng(-25.36111, 130.55583),
        zoom: 3.2,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    cameraChange();
    _onMapCreated();
    return GoogleMap(
      mapType: MapType.terrain,
      initialCameraPosition: kGooglePlex,
      markers: _markers,
      onCameraMove: cameraMove,      
    );
  }
}
