import 'package:flutter/material.dart';

class ConfirmReadings extends StatefulWidget {
  @override
  _ConfirmReadingsState createState() => new _ConfirmReadingsState();
}

// widget for ConfirmReadings page
class _ConfirmReadingsState extends State<ConfirmReadings> {

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
                      'Confirm',
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
                margin: const EdgeInsets.only(top: 30.0),
                child: Text(
                    'Are you sure you wish to submit\n       the following readings?',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Gotham',
                      color: Colors.white,
                    ),
                  ),
              ),

              Container(
                margin: const EdgeInsets.only(top: 30.0),
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2.0,
                    color: Colors.pinkAccent[400],
                  ),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Text(
                  'Electric = ',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Gotham',
                    color: Colors.white,
                  ),
                ),
              ),

              Container(
                margin: const EdgeInsets.only(top: 10.0),
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2.0,
                    color: Colors.pinkAccent[400],
                  ),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Text(
                  'Gas = ',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Gotham',
                    color: Colors.white,
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
                  'Ensure there aren\'t any red\n    digits in your readings!',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Gotham',
                    color: Colors.redAccent[400],
                  ),
                ),
              ),

              Container(
                child: Center(
                  child: Row(
                    children: <Widget>[

                      Container(
                        child: Padding(
                          padding: EdgeInsets.only(left: 70.0, top: 20.0),
                          child: ButtonTheme(
                            height: 40.0,
                            child: RaisedButton.icon(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(Icons.cancel),
                              color: Colors.redAccent[400],
                              label: Text(
                                'Cancel',
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
                        child: Padding(
                          padding: EdgeInsets.only(left: 20.0, top: 20.0),
                          child: ButtonTheme(
                            height: 40.0,
                            child: RaisedButton.icon(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(Icons.check_circle),
                              color: Colors.greenAccent[400],
                              label: Text(
                                'Submit',
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

            ],
          ),
        ),
      ),
    );
  }
}