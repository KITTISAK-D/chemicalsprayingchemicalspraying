import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

@RoutePage()
class MapPage extends StatelessWidget {
  const MapPage({super.key});

   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Google Maps',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MapScreen(),
    );
  }
}

class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  late GoogleMapController mapController;
  final Set<Marker> _markers = {};
  List<LatLng> waypoints = [];

  final LatLng _initialPosition = const LatLng(19.0332827, 99.8926695);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  void _addMarker(LatLng position) {
    final marker = Marker(
      markerId: MarkerId(position.toString()),
      position: position,
      infoWindow: InfoWindow(
        title: 'Waypoint',
        snippet: 'Lat: ${position.latitude}, Lng: ${position.longitude}',
      ),
      icon: BitmapDescriptor.defaultMarker,
    );

    setState(() {
      _markers.add(marker);
      waypoints.add(position); // เก็บพิกัดไว้ใน waypoints
    });
  }

  void _saveWaypoints() {
    // สามารถแสดงใน console หรือบันทึกลงฐานข้อมูลได้
    print("Waypoints saved: $waypoints");
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text('Waypoints saved successfully!'),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Google Maps'),
        actions: [
          IconButton(
            icon: Icon(Icons.save),
            onPressed: _saveWaypoints, // บันทึก Waypoints
          ),
        ],
      ),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: _initialPosition,
          zoom: 16.0,
        ),
        markers: _markers,
        onTap: (position) {
          _addMarker(position); // เพิ่มหมุดเมื่อคลิกบนแผนที่
        },
      ),
    );
  }
}