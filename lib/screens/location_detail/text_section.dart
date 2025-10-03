import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  final String
  _title; // final means the variable can't be changed and _title is private
  final String _body;
  static const double _hPadding = 16.0; // Constant Horizontal Padding (Must be static if it's constant)

  const TextSection(this._title, this._body); // Constructor

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(_hPadding, 32.0, _hPadding, 4.0),
          child: Text(_title),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(_hPadding, 10.0, _hPadding, 4.0),
          child: Text(_body),
        ),
      ],
    );
  }
}
