import 'package:demoapp/Class%20Form/Seek_Bar.dart';
import 'package:demoapp/login_page.dart';
import 'package:flutter/material.dart';

class Tab_Bar extends StatefulWidget {
  const Tab_Bar({super.key});

  @override
  State<Tab_Bar> createState() => _Tab_BarState();
}

class _Tab_BarState extends State<Tab_Bar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(tabs: [
              Tab(
                icon: Icon(Icons.home),
              ),
              Tab(
                icon: Icon(Icons.school),
              ),
              Tab(
                icon: Icon(Icons.offline_bolt),
              )
            ]),
          ),
          body: TabBarView(children: [
            // seek_Bar(),
            //  CountryCodePicker(),
            Tab(
              icon: Icon(Icons.home),
            ),
            Tab(icon: Icon(Icons.home)),
            Tab(icon: Icon(Icons.home)),
          ]),
        ));
  }
}
