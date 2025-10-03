import 'package:flutter/material.dart';
import 'screens/location_detail/location_detail.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LocationDetail(),
    );
  }
}
