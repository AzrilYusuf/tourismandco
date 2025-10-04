import 'package:flutter/material.dart';
import 'image_banner.dart';
import 'text_section.dart';
import '../../models/location.dart';

class LocationDetail extends StatelessWidget {
  final int _locationID;

  const LocationDetail(
    this._locationID, {
    super.key, // super.key is used to pass the key to the parent widget
  });

  @override
  Widget build(BuildContext context) {
    final Location detailedLocation = Location.fetchByID(_locationID);

    return Scaffold(
      appBar: AppBar(
        title: Text(detailedLocation.name),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ImageBanner(detailedLocation.imagePath),
          // ... is used to spread the list of TextSection widgets
          ...textSections(detailedLocation),
        ],
      ),
    );
  }

  // This function returns a list of TextSection widgets
  List<Widget> textSections(Location location) {
    // The map function is used to create a list of TextSection widgets
    // .toList() is used to convert the map to a list (since map() returns an iterable and doesn't return a list)
    return location.facts
        .map((fact) => TextSection(fact.title, fact.text))
        .toList();
  }
}
