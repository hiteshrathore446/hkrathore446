import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

const String _TITLE = 'DottedLine Demo';
class Dotted_Box extends StatefulWidget {
  const Dotted_Box({super.key});

  @override
  State<Dotted_Box> createState() => _Dotted_BoxState();
}

class _Dotted_BoxState extends State<Dotted_Box> {
  Widget build(BuildContext context) {
    final space = SizedBox(height: 50);
    return Scaffold(
      appBar: AppBar(title: Text(_TITLE)),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            space,
            Text("Default"),
            DottedLine(),
            space,
            Text("Dash length changed"),
            DottedLine(dashLength: 40),
            space,
            Text("Dash gap length changed"),
            DottedLine(dashLength: 30, dashGapLength: 30),
            space,
            Text("Line thickness changed"),
            DottedLine(
              dashLength: 30,
              dashGapLength: 30,
              lineThickness: 30,
            ),
            space,
            Text("Dash radius changed"),
            DottedLine(
              dashLength: 30,
              dashGapLength: 30,
              lineThickness: 30,
              dashRadius: 16,
            ),
            space,
            Text("Dash and dash gap color changed"),
            DottedLine(
              dashLength: 30,
              dashGapLength: 30,
              lineThickness: 30,
              dashColor: Colors.blue,
              dashGapColor: Colors.red,
            ),
            space,
            Text("Line direction and line length changed"),
            DottedLine(
              dashLength: 30,
              dashGapLength: 30,
              lineThickness: 30,
              dashColor: Colors.blue,
              dashGapColor: Colors.red,
              direction: Axis.vertical,
              lineLength: 150,
            ),
            space,
            Text("Dash gradient changed"),
            DottedLine(
              dashGradient: [
                Colors.red,
                Colors.blue,
              ],
              dashLength: 10,
              lineThickness: 30,
            ),
            space,
            Text("Dash gradient and dash gap gradient changed"),
            DottedLine(
              dashGradient: [
                Colors.red,
                Colors.red.withAlpha(0),
              ],
              dashGapGradient: [
                Colors.blue,
                Colors.blue.withAlpha(0),
              ],
              dashLength: 10,
              dashGapLength: 10,
              lineThickness: 30,
            ),
            space,
          ],
        ),
      ),
    );
  }
}