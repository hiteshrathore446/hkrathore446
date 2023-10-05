
import 'package:flutter/material.dart';

class Redio_Color_Screen extends StatefulWidget {
  const Redio_Color_Screen({super.key});

  @override
  State<Redio_Color_Screen> createState() =>Redio_Color_ScreenState();
}

class Redio_Color_ScreenState extends State<Redio_Color_Screen> {
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
         fillColor: MaterialStateColor.resolveWith(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.selected)) {
                  return Colors.red;
                }
                return Colors.green;
           },)
          ),
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