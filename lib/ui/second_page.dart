import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final String title;

  SecondPage({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
    );
  }
}
