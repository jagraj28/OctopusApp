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

      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[

                // account balance
                Center(
                  child: Container(
                    child: Padding(
                      padding: EdgeInsets.only(top: 80.0),
                      child: Text(
                        'Account Balance',
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

                Center(
                  child: Container(
                    margin: const EdgeInsets.only(top: 20.0),
                    padding: const EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2.0,
                        color: Colors.lightBlueAccent,
                      ),
                    ),
                    child: Text(
                      '£76.89',
                      style: TextStyle(
                        fontSize: 25.0,
                        fontFamily: 'Gotham',
                        color: Colors.white,
                      ),
                    ),
                  )
                ),

                // tariff information
                Container(
                  margin: const EdgeInsets.only(top: 30.0),
                  child: Text(
                    'Tariff:',
                    style: TextStyle(
                      fontSize: 25.0,
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
                    ),
                    child: Text(
                      'Octopus 12M Fixed',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Gotham',
                        color: Colors.white,
                    ),
                  ),
                ),

                Container(
                    margin: const EdgeInsets.only(top: 5.0),
                    padding: const EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2.0,
                        color: Colors.pinkAccent[400],
                      ),
                    ),
                    child: Text(
                      'Renewal Date: 03/03/2021',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Gotham',
                        color: Colors.white,
                    ),
                  ),
                ),

                Container(
                  child: Center(
                    child: Row(
                      children: <Widget>[

                        Container(
                          margin: const EdgeInsets.only(top: 5.0, left: 35.0),
                          padding: const EdgeInsets.all(25.0),
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 3.0,
                              color: Colors.lightGreenAccent[400],
                            ),
                          ),
                          child: Text(
                            '   Electric:\n\n16.36p/kWh\n21.43p/day',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontFamily: 'Gotham',
                              color: Colors.white,
                            ),
                          ),
                        ),
                    
                        Container(
                          margin: const EdgeInsets.only(top: 5.0, left: 5.0),
                          padding: const EdgeInsets.all(25.0),
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 3.0,
                              color: Colors.amberAccent[400],
                            ),
                          ),
                          child: Text(
                            '     Gas:\n\n3.86p/kWh\n16.84p/day',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontFamily: 'Gotham',
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // code for referral link
                Container(
                  margin: const EdgeInsets.only(top: 30.0),
                  child: Text(
                    'Referral Link:',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontFamily: 'Gotham',
                      color: Colors.white,
                    ),
                  ),
                ),

                Container(
                  margin: const EdgeInsets.only(top: 10.0),
                  child: Text(
                    'Share £100 with a friend!',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Gotham',
                      color: Colors.white,
                    ),
                  ),
                ),
                
                Container(
                  margin: const EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
                  padding: const EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2.0,
                      color: Colors.lightBlueAccent[400],
                    ),
                  ),
                  child: Text(
                    'share.octopus.energy/panda-oscar-123',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontFamily: 'Gotham',
                      color: Colors.white,
                    ),
                  ),
                ),

                // statements header
                Container(
                  margin: const EdgeInsets.only(top: 30.0),
                  child: Text(
                    'Statements:',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontFamily: 'Gotham',
                      color: Colors.white,
                    ),
                  ),
                ),

                // button for past statements
                Container(
                  child: Padding(
                    padding: EdgeInsets.only(top: 5.0, bottom: 20.0),
                    child: ButtonTheme(
                      height: 40.0,
                      child: RaisedButton.icon(
                        onPressed: () {
                          Navigator.pushNamed(context, '/statements');
                        },
                        icon: Icon(Icons.remove_red_eye),
                        color: Colors.amberAccent[400],
                        label: Text(
                          'View Past Statements',
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
                
                // logout button
                Container(
                  child: Padding(
                    padding: EdgeInsets.only(top: 5.0, bottom: 30.0),
                    child: ButtonTheme(
                      height: 40.0,
                      child: RaisedButton.icon(
                        onPressed: () {
                          Navigator.pushNamed(context, '/login');
                        },
                        icon: Icon(Icons.power_settings_new),
                        color: Colors.lightBlueAccent[400],
                        label: Text(
                          'Logout',
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