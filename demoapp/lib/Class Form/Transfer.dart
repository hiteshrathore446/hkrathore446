import 'package:demoapp/Class%20Form/Example.dart';
import 'package:demoapp/Class%20Form/Seek_Bar.dart';
import 'package:flutter/material.dart';

class Transfer_Page extends StatefulWidget {
  const Transfer_Page({super.key});

  @override
  State<Transfer_Page> createState() => _Transfer_PageState();
}

class _Transfer_PageState extends State<Transfer_Page> {
  TextEditingController Name = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "Name"),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => Example(
                                name: Name.text.toString(),
                              )));
                },
                child: Text("OK"))
          ],
        ),
      ),
    );
  }
}
