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
                    padding: EdgeInsets.only(top: 80.0),
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

              Container(
                margin: const EdgeInsets.only(top: 40.0),
                child: Text(
                    'Amount:',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontFamily: 'Gotham',
                      color: Colors.white,
                    ),
                  ),
              ),

              Container(
                margin: const EdgeInsets.only(top: 15.0),
                padding: const EdgeInsets.all(25.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 3.0,
                    color: Colors.pink[400],
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Text(
                  '£68.36',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Gotham',
                    color: Colors.amberAccent[100],
                  ),
                ),
              ),

              Container(
                margin: const EdgeInsets.only(top: 40.0),
                child: Text(
                    'Date: ',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontFamily: 'Gotham',
                      color: Colors.white,
                    ),
                  ),
              ),

              Container(
                margin: const EdgeInsets.only(top: 15.0),
                padding: const EdgeInsets.all(25.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 3.0,
                    color: Colors.pink[400],
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Text(
                  '5th of the month',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Gotham',
                    color: Colors.amberAccent[100],
                  ),
                ),
              ),

              Container(
                margin: const EdgeInsets.only(top: 40.0),
                child: Text(
                    'Type: ',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontFamily: 'Gotham',
                      color: Colors.white,
                    ),
                  ),
              ),

              Container(
                margin: const EdgeInsets.only(top: 15.0),
                padding: const EdgeInsets.all(25.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 3.0,
                    color: Colors.pink[400],
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Text(
                  'Direct Debit',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Gotham',
                    color: Colors.amberAccent[100],
                  ),
                ),
              ),

              Container(
                child: Padding(
                  padding: EdgeInsets.only(top: 40.0),
                  child: Center(
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/payment');
                      },
                      color: Colors.amberAccent[400],
                      child: Text(
                        'Make a one-off payment?',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25.0,
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