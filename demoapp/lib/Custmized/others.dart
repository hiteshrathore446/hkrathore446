import 'package:demoapp/Const/Color.dart';
import 'package:demoapp/Const/String.dart';
import 'package:demoapp/Custmized/TextField.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatefulWidget {
  const myapp({super.key});

  @override
  State<myapp> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<myapp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              last.text.size(24).color(redcolor).makeCentered(),
              user.text.size(24).color(redcolor).make(),
              Custtextfield(hint: "Name", lable: "Name", title: "Name")
            ],
          ),
        ),
      ),
    );
  }
}
