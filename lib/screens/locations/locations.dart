import 'package:flutter/material.dart';
import '../../app.dart';
import '../../models/location.dart';

class Locations extends StatelessWidget {
  const Locations({super.key});

  // This function is called when a location is tapped
  void _onLocationTap(BuildContext context, int locationID) {
    Navigator.pushNamed(context, LocationDetailRoute, arguments: {'id': locationID});
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final locations = Location.fetchAll();

    return Scaffold(
      appBar: AppBar(
        title: Text('Locations'),
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView(
        children: locations
            .map(
              (location) => GestureDetector(
                child: Text(location.name),
                // Using _onLocationTap() as a callback instead of a Navigator.push() expicitly
                // so that we can pass the locationID and the code is more concise and readable
                onTap: () => _onLocationTap(context, location.id),
              ),
            )
            .toList(),
      ),
    );
  }
}
