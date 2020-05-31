import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

// widget for Home page
class _HomeState extends State<Home> {

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
                      'Account Balance',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 40.0,
                        color: Colors.greenAccent,
                        fontFamily: 'Gotham',
                      ),
                    ),
                  ),
                ),
              ),

              Center(
                child: Container(
                  margin: const EdgeInsets.only(top: 30.0),
                  padding: const EdgeInsets.all(25.0),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 3.0,
                      color: Colors.lightBlueAccent,
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Text(
                    '£76.89',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontFamily: 'Gotham',
                      color: Colors.greenAccent[200],
                    ),
                  ),
                )
              ),

              Container(
                margin: const EdgeInsets.only(top: 60.0),
                child: Text(
                    'Tariff:',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontFamily: 'Gotham',
                      color: Colors.white,
                    ),
                  ),
              ),

              Container(
                  margin: const EdgeInsets.only(top: 20.0),
                  padding: const EdgeInsets.all(25.0),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 3.0,
                      color: Colors.pink[400],
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Text(
                    'Octopus 12M Fixed',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontFamily: 'Gotham',
                      color: Colors.amberAccent,
                  ),
                ),
              ),

              Container(
                margin: const EdgeInsets.only(top: 50.0),
                child: Text(
                    'Payments:',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontFamily: 'Gotham',
                      color: Colors.white,
                    ),
                  ),
              ),

            Container(
              margin: const EdgeInsets.only(top: 20.0),
              padding: const EdgeInsets.all(25.0),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 3.0,
                  color: Colors.pink[400],
                ),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Text(
                'Amount: £68.36',
                style: TextStyle(
                  fontSize: 30.0,
                  fontFamily: 'Gotham',
                  color: Colors.amberAccent,
                ),
              ),
            ),

            Container(
              margin: const EdgeInsets.only(top: 5.0),
              padding: const EdgeInsets.all(25.0),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 3.0,
                  color: Colors.pink[400],
                ),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Text(
                'Date: 5th of the month',
                style: TextStyle(
                  fontSize: 30.0,
                  fontFamily: 'Gotham',
                  color: Colors.amberAccent,
                ),
              ),
            ),

            Container(
              margin: const EdgeInsets.only(top: 5.0),
              padding: const EdgeInsets.all(25.0),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 3.0,
                  color: Colors.pink[400],
                ),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Text(
                'Type: Direct Debit',
                style: TextStyle(
                  fontSize: 30.0,
                  fontFamily: 'Gotham',
                  color: Colors.amberAccent,
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