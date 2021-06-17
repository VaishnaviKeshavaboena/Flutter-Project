import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget {
  final guestname;
  ScreenTwo({@required this.guestname});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("welcome to secondscreen"),
      ),
      body: Center(
          child: Text(
        "Hi $guestname",
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      )),
    );
  }
}
