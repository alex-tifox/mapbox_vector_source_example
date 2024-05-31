import 'package:flutter/material.dart';
import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart';
import 'package:mapbox_vector_source_example/mapbox_map/config/map_config.dart';
import 'package:mapbox_vector_source_example/mapbox_map/mapbox_map_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MapboxOptions.setAccessToken(MapConfig.accessToken);
  runApp(const MaterialApp(home: MapboxMapScreen()));
}
