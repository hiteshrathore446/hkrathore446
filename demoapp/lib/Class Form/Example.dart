import 'package:flutter/material.dart';

class Example extends StatelessWidget {
  var name;
  Example({this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text("Welcome $name"),
          
        ),
      ),
    );
  }
}
