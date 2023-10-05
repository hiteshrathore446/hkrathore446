
import 'package:flutter/material.dart';

class Check_Box_Screen extends StatefulWidget {
  const Check_Box_Screen({super.key});

  @override
  State<Check_Box_Screen> createState() => Check_Box_ScreenState();
}

class Check_Box_ScreenState extends State<Check_Box_Screen> {
  bool firstVal = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My App"),
      ),body: Container(
        child: Row(
          children: [
            Text("Hello"),
           Checkbox(value: this.firstVal, onChanged: (bool?value){
           setState(() {
           this.firstVal=value!;
  });
})
          ],
        ),
      ),
    );
   }
}