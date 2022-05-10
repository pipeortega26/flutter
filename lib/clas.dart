import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

Future<void> getLocation() async {
  try {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    print(position);
  } catch (e) {
    print('No activo ubicacion');
  }
}
