import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/foundation.dart';

class PageMaps extends StatefulWidget {
  @override
  _PageMapsState createState() => _PageMapsState();
}

class _PageMapsState extends State<PageMaps> {
  final LatLng paudmasehi = LatLng(-6.809898, 110.838486);
  final LatLng tkmasehi = LatLng(-6.809898, 110.838486);
  final LatLng sdmasehi = LatLng(-6.809933, 110.838411);
  final LatLng smpmasehi = LatLng(-6.810086, 110.838788);
  final LatLng smamasehi = LatLng(-6.812396, 110.837651);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Card(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 30.0),
              child: Column(
                children: <Widget>[
                  Text(
                    "Paud Masehi",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.red,
                        fontWeight: FontWeight.bold),
                  ),
                  Center(
                    child: SizedBox(
                      width: 300.0,
                      height: 300.0,
                      child: GoogleMap(
                          initialCameraPosition:
                              CameraPosition(target: paudmasehi, zoom: 11.0),
                          markers: Set<Marker>.of(<Marker>[
                            Marker(
                              markerId: MarkerId("paud_masehi"),
                              position: LatLng(
                                  paudmasehi.latitude, paudmasehi.longitude),
                              infoWindow: InfoWindow(
                                  title: "Paud Masehi",
                                  snippet: "Sekolah Paud Masehi"),
                            ),
                          ]),
                          gestureRecognizers:
                              <Factory<OneSequenceGestureRecognizer>>[
                            Factory<OneSequenceGestureRecognizer>(
                              () => ScaleGestureRecognizer(),
                            ),
                          ].toSet()),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 30.0),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    "TK Masehi Kudus",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.red,
                        fontWeight: FontWeight.bold),
                  ),
                  Center(
                    child: SizedBox(
                      width: 300.0,
                      height: 300.0,
                      child: GoogleMap(
                          initialCameraPosition:
                              CameraPosition(target: tkmasehi, zoom: 11.0),
                          markers: Set<Marker>.of(<Marker>[
                            Marker(
                              markerId: MarkerId("id_tkmasehi"),
                              position:
                                  LatLng(tkmasehi.latitude, tkmasehi.longitude),
                              infoWindow: InfoWindow(
                                  title: "TK Masehi Kudus",
                                  snippet: "Sekolah TK Masehi"),
                            ),
                          ]),
                          gestureRecognizers:
                              <Factory<OneSequenceGestureRecognizer>>[
                            Factory<OneSequenceGestureRecognizer>(
                              () => ScaleGestureRecognizer(),
                            ),
                          ].toSet()),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 30.0),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    "SD Masehi",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.red,
                        fontWeight: FontWeight.bold),
                  ),
                  Center(
                    child: SizedBox(
                      width: 300.0,
                      height: 300.0,
                      child: GoogleMap(
                          initialCameraPosition:
                              CameraPosition(target: sdmasehi, zoom: 11.0),
                          markers: Set<Marker>.of(<Marker>[
                            Marker(
                              markerId: MarkerId("id_sdmasehi"),
                              position:
                                  LatLng(sdmasehi.latitude, sdmasehi.longitude),
                              infoWindow: InfoWindow(
                                  title: "SD Masehi",
                                  snippet: "Sekolah SD Masehi"),
                            ),
                          ]),
                          gestureRecognizers:
                              <Factory<OneSequenceGestureRecognizer>>[
                            Factory<OneSequenceGestureRecognizer>(
                              () => ScaleGestureRecognizer(),
                            ),
                          ].toSet()),
                    ),
                  ),
                ],
              ),
            ),
          ),
           Card(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 30.0),
              child: Column(
                children: <Widget>[
                  Text(
                    "SMP Masehi",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.red,
                        fontWeight: FontWeight.bold),
                  ),
                  Center(
                    child: SizedBox(
                      width: 300.0,
                      height: 300.0,
                      child: GoogleMap(
                          initialCameraPosition:
                              CameraPosition(target: smpmasehi, zoom: 11.0),
                          markers: Set<Marker>.of(<Marker>[
                            Marker(
                              markerId: MarkerId("SMP_masehi"),
                              position: LatLng(
                                  paudmasehi.latitude, smpmasehi.longitude),
                              infoWindow: InfoWindow(
                                  title: "SMP Masehi",
                                  snippet: "Sekolah SMP Masehi"),
                            ),
                          ]),
                          gestureRecognizers:
                              <Factory<OneSequenceGestureRecognizer>>[
                            Factory<OneSequenceGestureRecognizer>(
                              () => ScaleGestureRecognizer(),
                            ),
                          ].toSet()),
                    ),
                  ),
                ],
              ),
            ),
          ),
           Card(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 30.0),
              child: Column(
                children: <Widget>[
                  Text(
                    "SMA Masehi",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.red,
                        fontWeight: FontWeight.bold),
                  ),
                  Center(
                    child: SizedBox(
                      width: 300.0,
                      height: 300.0,
                      child: GoogleMap(
                          initialCameraPosition:
                              CameraPosition(target: smamasehi, zoom: 11.0),
                          markers: Set<Marker>.of(<Marker>[
                            Marker(
                              markerId: MarkerId("SMA_masehi"),
                              position: LatLng(
                                  paudmasehi.latitude, smamasehi.longitude),
                              infoWindow: InfoWindow(
                                  title: "SMA Masehi",
                                  snippet: "Sekolah SMA Masehi"),
                            ),
                          ]),
                          gestureRecognizers:
                              <Factory<OneSequenceGestureRecognizer>>[
                            Factory<OneSequenceGestureRecognizer>(
                              () => ScaleGestureRecognizer(),
                            ),
                          ].toSet()),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
