import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  final String
  _title; // final means the variable can't be changed and _title is private
  final String _body;
  static const double _hPadding = 16.0; // Constant Horizontal Padding (Must be static if it's constant)

   // Constructor, super.key is used to pass the key to the parent widget (if any)
  const TextSection(this._title, this._body, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(_hPadding, 32.0, _hPadding, 4.0),
          child: Text(_title, style: Theme.of(context).textTheme.titleLarge), // Theme.of(context) is used to access the theme of the current context
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(_hPadding, 10.0, _hPadding, 4.0),
          child: Text(_body, style: Theme.of(context).textTheme.bodyMedium),
        ),
      ],
    );
  }
}
