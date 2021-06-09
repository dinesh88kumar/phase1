import 'package:flutter/material.dart';

class Tech extends StatefulWidget {
  const Tech({Key? key}) : super(key: key);

  @override
  _TechState createState() => _TechState();
}

class _TechState extends State<Tech> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('tech'),
      ),
    );
  }
}
