import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  @override
  _AccountState createState() => new _AccountState();
}

// widget for Account page
class _AccountState extends State<Account> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[900],
      resizeToAvoidBottomInset: true,

      body: Center(
        child: Text(
          'Account',
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