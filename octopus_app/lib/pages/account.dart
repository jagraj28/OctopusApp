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
                    padding: EdgeInsets.only(top: 80.0),
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

              Container(
                margin: const EdgeInsets.only(top: 20.0),
                padding: const EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 2.0,
                      color: Colors.lightBlueAccent,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                child: Text(
                  'A-123456789',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Gotham',
                    color: Colors.white,
                  ),
                ),
              ),

              Container(
                margin: const EdgeInsets.only(top: 30.0),
                child: Text(
                    'Name:',
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
                ),
                child: Text(
                  'Jagraj Singh',
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
                      Navigator.pushNamed(context, '/edit_name');
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
                    'Properties:',
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
                ),
                child: Text(
                  '123 Fake Street\nFakeville\nFA1 KE2',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Gotham',
                    color: Colors.white,
                  ),
                ),
              ),

              Container(
                margin: const EdgeInsets.only(top: 10.0),
                child: Text(
                    'Moving out? Get in touch with us!',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontFamily: 'Gotham',
                      color: Colors.blueGrey[300],
                    ),
                  ),
              ),

              Container(
                margin: const EdgeInsets.only(top: 30.0),
                child: Text(
                    'Contact Number:',
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
                ),
                child: Text(
                  '07777777777',
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
                      Navigator.pushNamed(context, '/edit_contact');
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
                  padding: EdgeInsets.only(top: 20.0),
                  child: ButtonTheme(
                    height: 40.0,
                    child: RaisedButton.icon(
                      onPressed: () {
                        Navigator.pushNamed(context, '/faq');
                      },
                      icon: Icon(Icons.info),
                      color: Colors.amberAccent[400],
                      label: Text(
                        'FAQ\'s',
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
                  padding: EdgeInsets.only(top: 3.0),
                  child: ButtonTheme(
                    height: 40.0,
                    child: RaisedButton.icon(
                      onPressed: () {
                        Navigator.pushNamed(context, '/help_support');
                      },
                      icon: Icon(Icons.help),
                      color: Colors.amberAccent[400],
                      label: Text(
                        'Help and Support',
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