import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:foodui/map/taptoroutemap.dart';
import 'package:foodui/pages/chief/my_orders.dart';
import 'package:http/http.dart' as http;
import 'package:latlong2/latlong.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyOrders()));
}
