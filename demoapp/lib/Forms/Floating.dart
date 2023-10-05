import 'package:flutter/material.dart';

class Foating_Page extends StatefulWidget {
  const Foating_Page({super.key});

  @override
  State<Foating_Page> createState() => _Foating_PageState();
}

class _Foating_PageState extends State<Foating_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Container(
      child: Center(
        child: Text("This is Floating Action Button"),
      ),
    ),floatingActionButton: FloatingActionButton(onPressed: (){},child: Text("+554"),),
    );
  }
}