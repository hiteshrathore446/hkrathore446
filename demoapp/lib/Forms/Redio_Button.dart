
import 'package:flutter/material.dart';

class Redio_button extends StatefulWidget {
  const Redio_button({super.key});

  @override
  State<Redio_button> createState() => Redio_buttonState();
}

class Redio_buttonState extends State<Redio_button> {
  String _selectoption = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Redio Button"),
      ),body: Column(
        children: [
          RadioListTile(
            title:Text("Hello"),
            value:"Mayback",
            groupValue:_selectoption,
            onChanged:Select,
          )
        ],
      ),
         );
   }

  void Select(String? value) {
    setState(() {
      _selectoption=value!;
          });
  }
}