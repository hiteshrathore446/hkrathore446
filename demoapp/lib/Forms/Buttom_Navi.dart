import 'package:demoapp/Class%20Form/Seek_Bar.dart';
import 'package:demoapp/Class%20Form/Seek_Bar_Row.dart';
import 'package:demoapp/Forms/Country_list.dart';
import 'package:demoapp/Forms/List.dart';
import 'package:demoapp/Forms/TextFild.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

class Bottom_Sheet extends StatefulWidget {
  const Bottom_Sheet({super.key});

  @override
  State<Bottom_Sheet> createState() => _Bottom_SheetState();
}

class _Bottom_SheetState extends State<Bottom_Sheet> {
  int _selectIndex = 0;
  static const TextStyle optionstyle =
      TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    // Country_list(),
    seek_Bar(),
    Seek_Bar_Row()
  ];
  void _opItemTapped(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Bar"),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.offline_bolt), label: "office"),
          BottomNavigationBarItem(icon: Icon(Icons.wordpress), label: "work")
        ],
        currentIndex: _selectIndex,
        selectedItemColor: Colors.amber,
        onTap: _opItemTapped,
      ),
    );
  }
}
