import 'package:flutter/material.dart';

class seek_Bar extends StatefulWidget {
  const seek_Bar({super.key});

  @override
  State<seek_Bar> createState() => _seek_BarState();
}

class _seek_BarState extends State<seek_Bar> {
  double _currrentval = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Slider(
          value: _currrentval,
          max: 100,
//divisions: 100,
          //  label: _currrentval.round().toString(),
          onChanged: (double value) {
            setState(() {
              _currrentval = value;
            });
          }),
    );
  }
}
