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

      body: Container(
        child: SingleChildScrollView(
          child: Column(

            children: <Widget>[
              Center(
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.only(top: 100.0),
                    child: Text(
                      'My Account',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 30.0,
                        color: Colors.white,
                        fontFamily: 'Gotham',
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}