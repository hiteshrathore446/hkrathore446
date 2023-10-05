import 'package:flutter/material.dart';

class transfer_data extends StatelessWidget {
  var name, surname;
  transfer_data({required this.name, required this.surname});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Column(
              children: [
                Text("First Name $name"),
                Text("second name $surname")
              ],
            ),
          )
        ],
      ),
    );
  }
}
