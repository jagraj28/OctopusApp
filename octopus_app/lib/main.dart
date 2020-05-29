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

      backgroundColor: Colors.deepPurple[900],
      resizeToAvoidBottomInset: false,

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
                color: Colors.white,
                fontFamily: 'Gotham',
            ),
          ),
        ),

          // login in centre of page
          Container(
            child: Center(
              child: Text(
                'Login',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontSize: 35.0,
                  color: Colors.white,
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
            margin: EdgeInsets.only(top: 610.0, left: 50.0, right: 50.0, bottom: 370.0),
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey)),
            ),
            child: Center(
              child: TextField(
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                  fontFamily: 'Gotham',
                ),
                decoration: InputDecoration(
                  hintText: 'Email',
                  hintStyle: TextStyle(color: Colors.white),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),

          // password
          Container(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 380.0),
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
            margin: EdgeInsets.only(top: 740.0, left: 50.0, right: 50.0, bottom: 240.0),
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey)),
            ),
            child: Center(
              child: TextField(
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                  fontFamily: 'Gotham',
                ),
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyle(color: Colors.white),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),

          // forgot password
          Container(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 640.0),
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(
                    fontSize: 20.0,
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
              padding: const EdgeInsets.only(top: 750.0),
              child: Center(
                child: RaisedButton(
                  onPressed: () {},
                  color: Colors.greenAccent,
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30.0,
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