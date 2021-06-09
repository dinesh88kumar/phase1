import 'package:flutter/material.dart';

class Company extends StatefulWidget {
  const Company({Key? key}) : super(key: key);

  @override
  _CompanyState createState() => _CompanyState();
}

class _CompanyState extends State<Company> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('company'),
      ),
    );
  }
}
