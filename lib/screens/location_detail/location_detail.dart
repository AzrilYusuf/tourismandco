import 'package:flutter/material.dart';
import 'image_banner.dart';
import 'text_section.dart';
import '../../models/location.dart';

class LocationDetail extends StatelessWidget {
  const LocationDetail({
    super.key,
  }); // super.key is used to pass the key to the parent widget

  @override
  Widget build(BuildContext context) {
    final locations = Location.fetchAll();
    final location = locations.first;

    return Scaffold(
      appBar: AppBar(
        title: Text(location.name),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ImageBanner(location.imagePath),
          // ... is used to spread the list of TextSection widgets
          // ...textSections(location),
        ],
      ),
    );
  }

  // This function returns a list of TextSection widgets
  List<Widget> textSections(Location location) {
    // The map function is used to create a list of TextSection widgets
    // .toList() is used to convert the map to a list (required for the return statement)
    return location.facts
        .map((fact) => TextSection(fact.title, fact.text))
        .toList();
  }
}
