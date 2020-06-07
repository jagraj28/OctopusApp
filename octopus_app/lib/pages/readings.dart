import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Readings extends StatefulWidget {
  @override
  _ReadingsState createState() => new _ReadingsState();
}

// widget for Readings page
class _ReadingsState extends State<Readings> {

  var elecKey = GlobalKey<FormState>();
  var gasKey = GlobalKey<FormState>();

  DateTime _dateTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.deepPurple[900],
      resizeToAvoidBottomInset: true,

      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },

        child: Container(
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
                    padding: EdgeInsets.only(top: 30.0),
                    child: Text(
                      'Electric',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 25.0,
                        color: Colors.white,
                        fontFamily: 'Gotham',
                      ),
                    ),
                  ), 
                ),

                Form(
                  key: elecKey,
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.only(top: 15.0, left: 100.0, right: 100.0),
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Center(
                          child: TextFormField(
                            validator: (String value) {
                              if (value.isEmpty) {
                                return "Please enter a valid reading";
                              }
                            },
                            keyboardType: TextInputType.number,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontFamily: 'Gotham',
                            ),
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(      
                                borderSide: BorderSide(color: Colors.white),   
                              ),  
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              prefixIcon: Icon(Icons.remove_red_eye, color: Colors.white),
                              hintText: 'Reading',
                              hintStyle: TextStyle(color: Colors.grey),
                              contentPadding: EdgeInsets.only(top: 16.0),
                              errorStyle: TextStyle(
                                fontFamily: 'Gotham', 
                                fontSize: 15.0, 
                                color: Colors.redAccent[400]
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
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

                Form(
                  key: gasKey,
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.only(top: 15.0, left: 100.0, right: 100.0),
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Center(
                          child: TextFormField(
                            validator: (String value) {
                              if (value.isEmpty) {
                                return "Please enter a valid reading";
                              }
                            },
                            keyboardType: TextInputType.number,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontFamily: 'Gotham',
                            ),
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(      
                                borderSide: BorderSide(color: Colors.white),   
                              ),  
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              prefixIcon: Icon(Icons.remove_red_eye, color: Colors.white),
                              hintText: 'Reading',
                              hintStyle: TextStyle(color: Colors.grey),
                              contentPadding: EdgeInsets.only(top: 16.0),
                              errorStyle: TextStyle(
                                fontFamily: 'Gotham', 
                                fontSize: 15.0, 
                                color: Colors.redAccent[400]
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Form(
                  child: Container(
                    padding: EdgeInsets.only(top: 20.0),
                    child: Center(
                      child: ButtonTheme(
                        height: 40.0,
                        buttonColor: Colors.lightBlueAccent[400],
                        child: RaisedButton.icon(
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
                          icon: Icon(Icons.date_range),
                          label: Text(
                            _dateTime == null ? 'Select the date!': DateFormat.yMMMMd('en_US').format(_dateTime),
                            style: TextStyle(
                              fontFamily: 'Gotham',
                              fontSize: 20.0,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                Container(
                  child: Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: ButtonTheme(
                      height: 40.0,
                      child: RaisedButton.icon(
                        onPressed: () {
                          if (elecKey.currentState.validate()) {
                          Navigator.pushReplacementNamed(context, '/confirm_readings');
                          }
                          if (gasKey.currentState.validate()) {
                          Navigator.pushReplacementNamed(context, '/confirm_readings');
                          }
                        },
                        icon: Icon(Icons.check),
                        color: Colors.greenAccent[400],
                        label: Text(
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
                      width: 4.0,
                      color: Colors.amberAccent[400],
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Text(
                    'Please don\'t submit any red\n    digits from your meter!',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Gotham',
                      color: Colors.redAccent[400],
                    ),
                  ),
                ),

                Container(
                  child: Padding(
                    padding: EdgeInsets.only(top: 140.0, bottom: 20.0),
                    child: ButtonTheme(
                      height: 40.0,
                      child: RaisedButton.icon(
                        onPressed: () {
                          Navigator.pushNamed(context, '/past_readings');
                        },
                        icon: Icon(Icons.remove_red_eye),
                        color: Colors.amberAccent[400],
                        label: Text(
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
      ),
    );
  }
}