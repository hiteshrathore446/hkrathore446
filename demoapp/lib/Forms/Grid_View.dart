import 'package:demoapp/Forms/List.dart';
import 'package:flutter/material.dart';

class Gride_View extends StatefulWidget {
  const Gride_View({super.key});

  @override
  State<Gride_View> createState() => _Gride_ViewState();
}

class _Gride_ViewState extends State<Gride_View> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 4,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        children: [
          Container(
              color: Colors.amber,
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => list_Screen()));
                  },
                  child: Text("1"))),
          Container(
              color: Colors.amber,
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => list_Screen()));
                  },
                  child: Text("2"))),
          Container(
              color: Colors.amber,
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => list_Screen()));
                  },
                  child: Text("3"))),
          Container(
              color: Colors.amber,
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => list_Screen()));
                  },
                  child: Text("4"))),
          Container(
              color: Colors.amber,
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => list_Screen()));
                  },
                  child: Text("5"))),
          Container(
              color: Colors.amber,
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => list_Screen()));
                  },
                  child: Text("6"))),
          Container(
              color: Colors.black,
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => list_Screen()));
                  },
                  child: Text("7"))),
        ],
      ),
    );
  }
}
