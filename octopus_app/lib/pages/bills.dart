import 'package:flutter/material.dart';

class Bills extends StatefulWidget {
  @override
  _BillsState createState() => new _BillsState();
}

// widget for Bills page
class _BillsState extends State<Bills> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[900],
      resizeToAvoidBottomInset: true,

      body: Center(
        child: Text(
          'Bills',
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