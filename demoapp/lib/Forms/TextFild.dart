import 'package:flutter/material.dart';

class Text_Fild_Page extends StatefulWidget {
  const Text_Fild_Page({super.key});

  @override
  State<Text_Fild_Page> createState() => _Text_Fild_PageState();
}

class _Text_Fild_PageState extends State<Text_Fild_Page> {
  TextEditingController _controller1 = TextEditingController();
  TextEditingController _controller2 = TextEditingController();
  TextEditingController _controller3 = TextEditingController();
  FocusNode _focusNode1 = FocusNode();
  FocusNode _focusNode2 = FocusNode();
  FocusNode _focusNode3 = FocusNode();

  @override
  void initState() {
    super.initState();
    _controller1.addListener(_onTextChanged);
    _controller2.addListener(_onTextChanged);
    _controller3.addListener(_onTextChanged);
  }

  void _onTextChanged() {
    if (_controller1.text.length == 3) {
      FocusScope.of(context).requestFocus(_focusNode2);
    } else if (_controller2.text.length == 3) {
      FocusScope.of(context).requestFocus(_focusNode3);
    }
  }

  @override
  void dispose() {
    _controller1.dispose();
    _controller2.dispose();
    _controller3.dispose();
    _focusNode1.dispose();
    _focusNode2.dispose();
    _focusNode3.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Auto Next TextField'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller1,
              focusNode: _focusNode1,
              maxLength: 3,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Field 1'),
            ),
            TextField(
              controller: _controller2,
              focusNode: _focusNode2,
              maxLength: 3,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Field 2'),
            ),
            TextField(
              controller: _controller3,
              focusNode: _focusNode3,
              maxLength: 3,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Field 3'),
            ),
          ],
        ),
      ),
    );
  }
}
