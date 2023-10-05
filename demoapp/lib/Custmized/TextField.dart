import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

Widget Custtextfield({String? title, String? hint, String? lable}) {
  return Column(
    children: [
      title!.text.fontWeight(FontWeight.bold).make(),
      10.heightBox,
      TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          hintText: hint,
          labelText: lable,
        ),
      )
    ],
  );
}
