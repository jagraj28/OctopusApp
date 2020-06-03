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
                margin: const EdgeInsets.only(top: 30.0),
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
                margin: const EdgeInsets.only(top: 10.0),
                padding: const EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2.0,
                    color: Colors.pinkAccent[400],
                  ),
                  borderRadius: BorderRadius.circular(50.0),
                ),
                child: Text(
                  '£68.36',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Gotham',
                    color: Colors.white,
                  ),
                ),
              ),

              Container(
                child: Center(
                  child: RaisedButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(context, '/edit_amount');
                    },
                    icon: Icon(Icons.edit),
                    color: Colors.green[400],
                    label: Text(
                      'Edit',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                        fontFamily: 'Gotham',
                      ),
                    ),
                  ),
                ),
              ),

              Container(
                margin: const EdgeInsets.only(top: 30.0),
                child: Text(
                    'Schedule:',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontFamily: 'Gotham',
                      color: Colors.white,
                    ),
                  ),
              ),

              Container(
                margin: const EdgeInsets.only(top: 10.0),
                padding: const EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2.0,
                    color: Colors.pinkAccent[400],
                  ),
                  borderRadius: BorderRadius.circular(50.0),
                ),
                child: Text(
                  '5th of every month',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Gotham',
                    color: Colors.white,
                  ),
                ),
              ),

              Container(
                child: Center(
                  child: RaisedButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(context, '/edit_date');
                    },
                    icon: Icon(Icons.edit),
                    color: Colors.green[400],
                    label: Text(
                      'Edit',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                        fontFamily: 'Gotham',
                      ),
                    ),
                  ),
                ),
              ),

              Container(
                margin: const EdgeInsets.only(top: 30.0),
                child: Text(
                    'Type:',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontFamily: 'Gotham',
                      color: Colors.white,
                    ),
                  ),
              ),

              Container(
                margin: const EdgeInsets.only(top: 10.0),
                padding: const EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2.0,
                    color: Colors.pinkAccent[400],
                  ),
                  borderRadius: BorderRadius.circular(50.0),
                ),
                child: Text(
                  'Direct Debit',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Gotham',
                    color: Colors.white,
                  ),
                ),
              ),

              Container(
                child: Center(
                  child: RaisedButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(context, '/edit_type');
                    },
                    icon: Icon(Icons.edit),
                    color: Colors.green[400],
                    label: Text(
                      'Edit',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                        fontFamily: 'Gotham',
                      ),
                    ),
                  ),
                ),
              ),

              Container(
                child: Padding(
                  padding: EdgeInsets.only(top: 30.0),
                  child: ButtonTheme(
                    height: 40.0,
                    child: RaisedButton.icon(
                      onPressed: () {
                        Navigator.pushNamed(context, '/payment');
                      },
                      icon: Icon(Icons.payment),
                      color: Colors.amberAccent[400],
                      label: Text(
                        'Make a one-off payment?',
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
                  padding: EdgeInsets.only(top: 80.0),
                  child: ButtonTheme(
                    height: 40.0,
                    child: RaisedButton.icon(
                      onPressed: () {
                        Navigator.pushNamed(context, '/past_payments');
                      },
                      icon: Icon(Icons.remove_red_eye),
                      color: Colors.amberAccent[400],
                      label: Text(
                        'View Past Payments',
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