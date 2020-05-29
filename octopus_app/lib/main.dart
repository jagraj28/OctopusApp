import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MaterialApp(
  home: Home(),
  debugShowCheckedModeBanner: false,
  )
);

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

// main widget for home page
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      resizeToAvoidBottomPadding: true,

      // code for entire body
      body: Stack(
        fit: StackFit.expand,

        // top end of page
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[

              // octopus image
              Padding(
                padding: EdgeInsets.only(top: 100.0, right: 30.0),
                child: Image.asset('assets/octopus.png'),
                ),
              ],
            ),

          // Welcome message
          Padding(
            padding: const EdgeInsets.only(top: 150.0, left: 40.0),
            child: Text(
              'Welcome\n   Back!',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.lightBlueAccent,
                fontFamily: 'Gotham',
            ),
          ),
        ),

        // login in centre of page
        Container(
          child: Center(
            child: Text(
              'Login:',
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                color: Colors.lightBlueAccent,
                fontFamily: 'Gotham',
              ),
            ),
          ),
        ),
        
        // email address
        Container(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 120.0),
              child: Text(
                'Email Address:',
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.amberAccent,
                  fontFamily: 'Gotham',
                  ),
                ),
              ),
            ),
          ),
        
        // space to enter email
        Container(
          height: 60.0,
          margin: EdgeInsets.only(top: 600.0, left: 40.0, right: 40.0, bottom: 380.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.grey[300],
          ),
          child: Center(
            child: Text(
              '',
              style: TextStyle(
                color: Colors.black,
                fontSize: 23.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Gotham',
              ),
            ),
          ),
        ),

        // password
        Container(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 360.0),
              child: Text(
                'Password:',
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.amberAccent,
                  fontFamily: 'Gotham',
                  ),
                ),
              ),
            ),
          ),

        /// space to enter password
        Container(
          height: 60.0,
          margin: EdgeInsets.only(top: 720.0, left: 40.0, right: 40.0, bottom: 260.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.grey[300],
          ),
          child: Center(
            child: Text(
              '',
              style: TextStyle(
                color: Colors.black,
                fontSize: 23.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Gotham',
              ),
            ),
          ),
        ),

        // forgot password
        Container(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 600.0),
              child: Text(
                'Forgot Password?',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.redAccent,
                  fontFamily: 'Gotham',
                  ),
                ),
              ),
            ),
          ),

        // login button
        Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 720.0),
            child: Center(
              child: FlatButton(
                onPressed: () {},
                color: Colors.greenAccent,
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Gotham',
                  ),
                ),
              ),
            ),
          ),
        ),


        ],
      ),
    );
  }
}