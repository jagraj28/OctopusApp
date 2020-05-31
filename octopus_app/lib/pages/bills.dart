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

      body: Container(
        child: SingleChildScrollView(
          child: Column(

            children: <Widget>[
              Center(
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.only(top: 100.0),
                    child: Text(
                      'My Bills',
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