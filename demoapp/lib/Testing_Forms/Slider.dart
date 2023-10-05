import 'package:flutter/material.dart';

class Slider extends StatefulWidget {
  const Slider({super.key});

  @override
  State<Slider> createState() => _SliderState();
}

class _SliderState extends State<Slider> {
  double _sliderValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Slider(
            
          //  divisions: 100,
          //  max: 100,
          //  value: _sliderValue,
          // onChanged: (double value) {
          //   setState(() {
          //     _sliderValue = value;
          //   });
          // },
          // activeColor: Color(0xFF7636ff),
          // inactiveColor: Colors.black12,

          ),
    );
  }
}
