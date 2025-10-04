import 'location_fact.dart';

class Location {
  String name;
  String imagePath;
  final List<LocationFact> facts;

  Location(this.name, this.imagePath, this.facts);

  static List<Location> fetchAll() {
    return [
      Location('Yamashiro Temple', 'assets/images/temple.jpg', [
        LocationFact(
          'Summary',
          'The Yamashiro Temple is a Hindu temple complex located in Kyoto, Japan.',
        ),
        LocationFact('Location', 'Kyoto, Japan'),
        LocationFact(
          'How to get there',
          'There are many ways to get to Kyoto, including train, bus, and car.',
        ),
      ]),
    ];
  }
}
