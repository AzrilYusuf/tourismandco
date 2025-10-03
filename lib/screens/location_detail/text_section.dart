import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  final Color _color; // final means the variable can't be changed and _color is private

  const TextSection(this._color); // Constructor

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: _color),
      child: Text('hi'),
    );
  }
}
