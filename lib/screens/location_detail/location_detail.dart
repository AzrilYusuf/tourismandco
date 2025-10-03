import 'package:flutter/material.dart';
import 'image_banner.dart';
import 'text_section.dart';

class LocationDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('hello'), backgroundColor: Colors.blueAccent),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ImageBanner("assets/images/temple.jpg"),

          TextSection("Summary", "something1"),
          TextSection("Details", "something2"),
          TextSection("Reviews", "something3"),
        ],
      ),
    );
  }
}
