import 'package:flutter/material.dart';

class Seek_Bar_Row extends StatefulWidget {
  const Seek_Bar_Row({super.key});

  @override
  State<Seek_Bar_Row> createState() => _Seek_Bar_RowState();
}

class _Seek_Bar_RowState extends State<Seek_Bar_Row> {
  double _sliderValue = 50.0;

  void _showZeroValueDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Warning'),
          content: Text('Slider value is 0.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Slider Example')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Slider(
              value: _sliderValue,
              onChanged: (newValue) {
                setState(() {
                  _sliderValue = newValue;
                });
              },
              min: 0,
              max: 100,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (_sliderValue == 0) {
                  _showZeroValueDialog();
                }
              },
              child: Text('Check Value and Show Message'),
            ),
          ],
        ),
      ),
    );
  }
}
