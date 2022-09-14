import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const LatLng companyLatLng = LatLng(
    35.6872689,
    139.7748334,
  );
  static const CameraPosition initialPosition = CameraPosition(
    target: companyLatLng,
    zoom: 18,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: renderAppBar(),
      body: Column(
        children: const [
          _CustomGoogleMap(
            initialPosition: initialPosition,
          ),
          _Attendance(),
        ],
      ),
    );
  }

  AppBar renderAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      title: const Text(
        '마카바보',
        style: TextStyle(
          color: Colors.blue,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}

class _CustomGoogleMap extends StatelessWidget {
  final CameraPosition initialPosition;

  const _CustomGoogleMap({
    required this.initialPosition,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: GoogleMap(
        initialCameraPosition: initialPosition,
      ),
    );
  }
}

class _Attendance extends StatelessWidget {
  const _Attendance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Text(
        '출근',
      ),
    );
  }
}
