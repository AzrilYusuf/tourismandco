import 'location_fact.dart';

class Location {
  final int id; // id is the primary key
  final String name;
  final String imagePath;
  final List<LocationFact> facts;

  Location(this.id, this.name, this.imagePath, this.facts);

  static List<Location> fetchAll() {
    return [
      Location(1, 'Yamashiro Temple', 'assets/images/temple.jpg', [
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
      Location(2, 'Mount Fuji', 'assets/images/mount-fuji.jpg', [
        LocationFact(
          'Summary',
          'Mount Fuji is the tallest mountain in Japan, standing at 3,776 meters (12,380 feet).',
        ),
        LocationFact('Location', 'Kyoto, Japan'),
        LocationFact(
          'How to get there',
          'There are many ways to get to Kyoto, including train, bus, and car.',
        ),
      ]),
      Location(3, 'Japanese village', 'assets/images/Village.jpg', [
        LocationFact(
          'Summary',
          'The Japanese village is a small Japanese village located in Kyoto, Japan.',
        ),
        LocationFact('Location', 'Kyoto, Japan'),
        LocationFact(
          'How to get there',
          'There are many ways to get to Kyoto, including train, bus, and car.',
        ),
      ]),
    ];
  }

  static fetchByID(int locationID) {
    // fetch all Locations, iterate them and when it finds the Location with the right ID, return it
    // return fetchAll().firstWhere((location) => location.id == locationID);
    List<Location> locations = fetchAll();
    for(var i = 0; i < locations.length; i++) {
      if (locations[i].id == locationID) {
        return locations[i];
      }
    }
    return null;
  }
}
