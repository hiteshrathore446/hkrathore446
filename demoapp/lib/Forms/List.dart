//import 'dart:html';

import 'package:demoapp/Forms/Grid_View.dart';
import 'package:flutter/material.dart';

class list_Screen extends StatefulWidget {
  const list_Screen({super.key});

  @override
  State<list_Screen> createState() => _list_ScreenState();
}

class _list_ScreenState extends State<list_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        physics: BouncingScrollPhysics(),
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        children: [
          Container(
            color: Colors.red,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Text(
                      "Name : HITESH RATHORE",
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      "Address : Ahmedabad",
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      "Phone Number : +91-8209515947",
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      "Study : BSC IT",
                      style: TextStyle(fontSize: 18),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      Gride_View()));
                        },
                        child: Icon(Icons.back_hand_sharp))
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
