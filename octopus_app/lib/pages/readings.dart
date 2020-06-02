import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Readings extends StatefulWidget {
  @override
  _ReadingsState createState() => new _ReadingsState();
}

// widget for Readings page
class _ReadingsState extends State<Readings> {

  DateTime _dateTime;

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
                    padding: EdgeInsets.only(top: 80.0),
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
                  padding: EdgeInsets.only(top: 40.0),
                  child: Text(
                    'Electricity',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 25.0,
                      color: Colors.white,
                      fontFamily: 'Gotham',
                    ),
                  ),
                ), 
              ),

              Container(
                margin: const EdgeInsets.only(top: 15.0, left: 100.0, right: 100.0),
                padding: const EdgeInsets.only(left: 15.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2.0,
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(40.0),
                ),
                child: Center(
                  child: TextField(
                    keyboardType: TextInputType.number,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontFamily: 'Gotham',
                    ),
                    decoration: InputDecoration(
                      hintText: 'Reading',
                      hintStyle: TextStyle(color: Colors.grey),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),

              Container(
                child: Padding(
                  padding: EdgeInsets.only(top: 30.0),
                  child: Text(
                    'Gas',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 25.0,
                      color: Colors.white,
                      fontFamily: 'Gotham',
                    ),
                  ),
                ), 
              ),

              Container(
                margin: const EdgeInsets.only(top: 15.0, left: 100.0, right: 100.0),
                padding: const EdgeInsets.only(left: 15.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2.0,
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(50.0),
                ),
                child: Center(
                  child: TextField(
                    keyboardType: TextInputType.number,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontFamily: 'Gotham',
                    ),
                    decoration: InputDecoration(
                      hintText: 'Reading',
                      hintStyle: TextStyle(color: Colors.grey),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),

              Container(
                padding: EdgeInsets.only(top: 10.0),
                child: Center(
                  child: Column(
                    children: <Widget>[
                      RaisedButton(
                        onPressed: () {
                          showDatePicker(
                            context: context, 
                            initialDate: DateTime.now(), 
                            firstDate: DateTime(2019), 
                            lastDate: DateTime.now(),
                          ).then((date) {
                            setState(() { _dateTime = date; });
                          });
                        },
                      child: Text(
                          _dateTime == null ? 'Select the date!': DateFormat.yMMMMd('en_US').format(_dateTime),
                          style: TextStyle(
                            fontFamily: 'Gotham',
                            fontSize: 20.0,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Container(
                child: Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: Center(
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/confirm_readings');
                      },
                      color: Colors.greenAccent[400],
                      child: Text(
                        'Confirm',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontFamily: 'Gotham',
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              Container(
                margin: const EdgeInsets.only(top: 30.0),
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 3.0,
                    color: Colors.amberAccent[400],
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Text(
                  'Please don\'t submit any red\n    digits from your meter!',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Gotham',
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
              ),

              Container(
                child: Padding(
                  padding: EdgeInsets.only(top: 30.0, bottom: 40.0),
                  child: Center(
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/past_readings');
                      },
                      color: Colors.amberAccent[400],
                      child: Text(
                        'View Past Readings',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontFamily: 'Gotham',
                        ),
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