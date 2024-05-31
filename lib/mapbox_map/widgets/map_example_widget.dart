import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart';
import 'package:mapbox_vector_source_example/mapbox_map/config/map_config.dart';

class MapExampleWidget extends StatefulWidget {
  const MapExampleWidget({super.key});

  @override
  State createState() => MapExampleWidgetState();
}

class MapExampleWidgetState extends State<MapExampleWidget> {
  MapboxMap? controller;

  Future<void> _onMapCreated(MapboxMap mapboxMap) async {
    controller = mapboxMap;
    await controller?.gestures.updateSettings(GesturesSettings(
      scrollEnabled: true,
      rotateEnabled: false,
    ));

    await controller?.style.addSource(
      VectorSource(
        id: MapConfig.mapboxVectorSourceId,
        url: MapConfig.mapboxVectorSourceUrl,
      ),
    );

    await controller?.style.addLayer(
      LineLayer(
          id: 'line_layer',
          sourceId: MapConfig.mapboxVectorSourceId,
          sourceLayer: MapConfig.mapboxVectorSourceLayerId,
          lineJoin: LineJoin.ROUND,
          lineCap: LineCap.ROUND,
          lineWidth: 2.0),
    );
    await controller?.style.setStyleLayerProperties(
      'line_layer',
      jsonEncode({
        'line-color': ['get', 'stroke'],
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MapWidget(
        styleUri: MapConfig.defaultMapStyle,
        cameraOptions: CameraOptions(
          center: Point(coordinates: Position(41.819734, -2.894154)).toJson(),
          zoom: 14.0,
        ),
        onMapCreated: _onMapCreated,
      ),
    );
  }
}
