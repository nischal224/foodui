import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:http/http.dart' as http;
import 'package:latlong2/latlong.dart';

class TapToRouteMap extends StatefulWidget {
  @override
  _TapToRouteMapState createState() => _TapToRouteMapState();
}

class _TapToRouteMapState extends State<TapToRouteMap>
    with TickerProviderStateMixin {
  LatLng? startPoint;
  LatLng? endPoint;
  List<LatLng> routePoints = [];
  double distance = 0;
  double duration = 0;
  String selectedMode = 'driving-car';
  final MapController mapController = MapController(); // MapController

  Future<void> fetchRoute() async {
    if (startPoint == null || endPoint == null) return;

    final apiKey = '5b3ce3597851110001cf62484c3a80d5bf784b22bfc5f6f22876547f';
    final url = Uri.parse(
      'https://api.openrouteservice.org/v2/directions/$selectedMode/geojson',
    );

    final response = await http.post(
      url,
      headers: {'Authorization': apiKey, 'Content-Type': 'application/json'},
      body: jsonEncode({
        "coordinates": [
          [startPoint!.longitude, startPoint!.latitude],
          [endPoint!.longitude, endPoint!.latitude],
        ],
      }),
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final List coords = data['features'][0]['geometry']['coordinates'];
      final props = data['features'][0]['properties']['summary'];

      setState(() {
        distance = props['distance'] / 1000;
        duration = props['duration'] / 60;
        routePoints =
            coords.map((c) => LatLng(c[1] as double, c[0] as double)).toList();

        // If route points are available, fit camera bounds to the route
      });
    } else {
      print("Error: ${response.body}");
    }
  }

  void handleTap(LatLng point) {
    setState(() {
      if (startPoint == null) {
        startPoint = point;
        endPoint = null;
        routePoints.clear();
      } else if (endPoint == null) {
        endPoint = point;
        fetchRoute();
      } else {
        startPoint = point;
        endPoint = null;
        routePoints.clear();
        distance = 0;
        duration = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Map expands to fill available space
          Expanded(
            child: FlutterMap(
              mapController: mapController, // Add the map controller here
              options: MapOptions(
                initialCenter: LatLng(27.700769, 85.300140),
                initialZoom: 12,
                onTap: (tapPosition, point) => handleTap(point),
              ),
              children: [
                TileLayer(
                  urlTemplate:
                      "https://{s}.tile.openstreetmap.fr/hot/{z}/{x}/{y}.png",
                  subdomains: ['a', 'b', 'c'],
                ),
                if (routePoints.isNotEmpty)
                  PolylineLayer(
                    polylines: [
                      Polyline(
                        points: routePoints,
                        color: Colors.purple,
                        strokeWidth: 5,
                      ),
                    ],
                  ),
                MarkerLayer(
                  markers: [
                    if (startPoint != null)
                      Marker(
                        width: 40,
                        height: 40,
                        point: startPoint!,
                        child: Icon(
                          Icons.location_on,
                          color: Colors.red,
                          size: 40,
                        ),
                      ),
                    if (endPoint != null)
                      Marker(
                        width: 40,
                        height: 40,
                        point: endPoint!,
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.green, width: 3),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.network(
                              'https://images.pexels.com/photos/12432908/pexels-photo-12432908.jpeg?auto=compress&cs=tinysrgb&w=600',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ),

          // Bottom form section
          Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [BoxShadow(blurRadius: 4, color: Colors.black26)],
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Address"),
                  SizedBox(height: 6),

                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.blueGrey.shade300,
                      hintText: '3235 Royal Ln, Mesa, New Jersey 34567',
                      prefixIcon: Icon(Icons.location_on, color: Colors.black),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  SizedBox(height: 6),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("STREET"),
                            SizedBox(height: 6),
                            TextField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.blueGrey.shade300,
                                hintText: 'Hason Nagar',
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("POST CODE"),
                            TextField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.blueGrey.shade300,
                                hintText: '34567',
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 6),

                  Text("APPARTMENT"),
                  SizedBox(height: 6),

                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.blueGrey.shade300,
                      hintText: '345',
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  SizedBox(height: 6),

                  Text("LABEL AS"),
                  SizedBox(height: 6),

                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Text(
                            "Home",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(width: 5),
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.blueGrey.shade100,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Text("Work"),
                        ),
                      ),
                      SizedBox(width: 5),

                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.blueGrey.shade100,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Text("Other"),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 6),
                  Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Text(
                      "SAVE LOCATION",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
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
