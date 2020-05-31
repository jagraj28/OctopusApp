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

      body: Container(
        child: SingleChildScrollView(
          child: Column(

            children: <Widget>[
              Center(
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.only(top: 100.0),
                    child: Text(
                      'Meter Readings',
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

              Container(
                child: Padding(
                  padding: EdgeInsets.only(top: 80.0, right: 220.0),
                  child: Text(
                    'Electricity',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 25.0,
                      color: Colors.lightBlueAccent,
                      fontFamily: 'Gotham',
                    ),
                  ),
                ), 
              ),

              Container(
                margin: EdgeInsets.only(top: 20.0, left: 60.0, right: 60.0),
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey)),
                ),
                child: Center(
                  child: TextField(
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontFamily: 'Gotham',
                    ),
                    decoration: InputDecoration(
                      hintText: 'Reading',
                      hintStyle: TextStyle(color: Colors.white),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),

              Container(
                child: Padding(
                  padding: EdgeInsets.only(top: 100.0, right: 300.0),
                  child: Text(
                    'Gas',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 25.0,
                      color: Colors.lightGreenAccent,
                      fontFamily: 'Gotham',
                    ),
                  ),
                ), 
              ),

              Container(
                margin: EdgeInsets.only(top: 20.0, left: 60.0, right: 60.0),
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey)),
                ),
                child: Center(
                  child: TextField(
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontFamily: 'Gotham',
                    ),
                    decoration: InputDecoration(
                      hintText: 'Reading',
                      hintStyle: TextStyle(color: Colors.white),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),

              Container(
                margin: const EdgeInsets.only(top: 60.0),
                padding: const EdgeInsets.all(25.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 3.0,
                    color: Colors.amberAccent,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Text(
                  'Please don\'t submit any red\n    digits from your meter!',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Gotham',
                    color: Colors.red,
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