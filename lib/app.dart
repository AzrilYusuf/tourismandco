import 'package:flutter/material.dart';
import 'screens/location_detail/location_detail.dart';
import 'style.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LocationDetail(),
      theme: ThemeData( // This is how to set the theme of the application
        appBarTheme: AppBarTheme( // Set the theme of the app bar
          titleTextStyle: fontNameDefault.copyWith(fontSize: mediumTextSize, fontWeight: FontWeight.w300),
        ),
      ),
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
