import 'package:flutter/material.dart';

class Readings extends StatefulWidget {
  @override
  _ReadingsState createState() => new _ReadingsState();
}

// widget for Readings page
class _ReadingsState extends State<Readings> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[900],
      resizeToAvoidBottomInset: true,

      body: Center(
        child: Text(
          'Readings',
          style: TextStyle(
            fontSize: 40.0,
            color: Colors.white,
            fontFamily: 'Gotham',
          ),
        ),
      ),
    );
  }
}