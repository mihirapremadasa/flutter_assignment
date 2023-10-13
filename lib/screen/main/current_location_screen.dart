import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:testing_agritech/utils/constants/app_colors.dart';

class GeolocationApp extends StatefulWidget {
  const GeolocationApp({super.key});

  @override
  State<GeolocationApp> createState() => _GeolocationAppState();
}

class _GeolocationAppState extends State<GeolocationApp> {
  get mainAxisAlignment => null;

  @override
  Widget build(BuildContext context) {
    Position? _currentLocation;
    late bool servicePermission = false;
    late LocationPermission permission;

    String _currentAddress = "";

    Future<Position> _getCurrentLocation() async {
      servicePermission = await Geolocator.isLocationServiceEnabled();
      if (!servicePermission) {
        print("service disabled");
      }
      permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
      }
      return await Geolocator.getCurrentPosition();
    }

    _getAddressFromCoordinates() async {
      try {
        List<Placemark> placemarks = await placemarkFromCoordinates(
            _currentLocation!.latitude, _currentLocation!.longitude);

        Placemark place = placemarks[0];

        setState(() {
          _currentAddress = "${place.locality}, ${place.country}";
        });
      } catch (e) {
        print(e);
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Farmer land location'),
        centerTitle: true,
        backgroundColor: AppColors.primaryColor,
        elevation: 8,
        leading: const Icon(Icons.menu),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "Location coordinates",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            "Latitude = ${_currentLocation?.latitude}; Longitude = ${_currentLocation?.longitude}",
          ),
          const SizedBox(
            height: 30.0,
          ),
          const Text(
            "Location Address",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Text("${_currentAddress}"),
          const SizedBox(
            height: 50.0,
          ),
          ElevatedButton(
            onPressed: () async {
              _currentLocation = await _getCurrentLocation();
              await _getAddressFromCoordinates();
              print("${_currentLocation}");
              print("${_currentAddress}");
            },
            child: const Text("get Location"),
          ),
        ],
      )),
    );
  }
}
