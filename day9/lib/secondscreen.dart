import 'package:flutter/material.dart';

class MySecondScreen extends StatefulWidget {
  var username;
  var password;
  MySecondScreen({this.username, this.password, super.key});

  @override
  State<MySecondScreen> createState() => _MySecondScreenState();
}

class _MySecondScreenState extends State<MySecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('second screen'),
      ),
      body: Text("${widget.username} / ${widget.password}"),
    );
  }
}
