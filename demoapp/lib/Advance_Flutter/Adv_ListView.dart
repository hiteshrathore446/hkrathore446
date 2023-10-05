import 'package:flutter/material.dart';

class Adv_List_view extends StatefulWidget {
  const Adv_List_view({super.key});

  @override
  State<Adv_List_view> createState() => _Adv_List_viewState();
}

class _Adv_List_viewState extends State<Adv_List_view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Advance List View"),
      ),
    );
  }
}