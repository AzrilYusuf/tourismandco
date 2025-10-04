import 'package:flutter/material.dart';
import 'screens/locations/locations.dart';
import 'screens/location_detail/location_detail.dart';
import 'style.dart';

// ignore: constant_identifier_names
const LocationsRoute = '/';
// ignore: constant_identifier_names
const LocationDetailRoute = '/location_detail';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  RouteFactory _routes() {
    return (settings) {
      final dynamic arguments = settings.arguments;
      Widget screen;
      switch (settings.name) {
        case LocationsRoute:
          screen = Locations();
          break;
        case LocationDetailRoute:
          screen = LocationDetail(arguments['id']);
          break;
        default:
          throw Exception('Invalid route: ${settings.name}');
      }
      // Use MaterialPageRoute cause screen is a widget not a type of Route
      // When we navigate to a named route, build the screen
      return MaterialPageRoute(builder: (BuildContext context) => screen);
    };
  }

  ThemeData _theme() {
    return ThemeData(
      // This is how to set the theme of the application
      appBarTheme: AppBarTheme(
        // Set the theme of the app bar
        titleTextStyle: appBarTextStyle,
      ),
      textTheme: TextTheme(
        titleLarge: titleTextStyle,
        bodyMedium: bodyTextStyle,
      ),
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Navigation using onGenerateRoute
      onGenerateRoute: _routes(),
      // Navigation using the widget tree
      // home: Locations(),
      // Navigation using named routes
      // initialRoute: '/',
      // routes: {
      // When we navigate to a named route, build the screen
      //   '/': (context) => FirstScreen(),
      //   '/location/:id': (context) => LocationDetail(),
      // },
      theme: _theme(),
    );
  }
}

// This is how to set the theme of the application (alt way)
// theme: _buildTheme(Brightness.light), // brightness is set to light (this is when _buildTheme is called)

// This is the theme of your application. (alt way)
// ThemeData _buildTheme(Brightness brightness) {
//   final ThemeData baseTheme = ThemeData(brightness: brightness);

//   return baseTheme.copyWith(
//     textTheme: GoogleFonts.montserratTextTheme(baseTheme.textTheme), // Text theme used by the app
//   );
// }
