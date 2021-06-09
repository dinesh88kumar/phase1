import 'package:flutter/material.dart';

class Industry extends StatefulWidget {
  const Industry({Key? key}) : super(key: key);

  @override
  _IndustryState createState() => _IndustryState();
}

class _IndustryState extends State<Industry> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('industry'),
      ),
    );
  }
}
