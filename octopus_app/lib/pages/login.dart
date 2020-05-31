import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => new _LoginState();
}

// widget for login page
class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.deepPurple[900],
      resizeToAvoidBottomInset: true,

      // code for entire body
      body: Container(
        child: SingleChildScrollView(
          child: Column(

          // top end of page
          children: <Widget>[
            Container(
              child: Padding(
                padding: EdgeInsets.only(top: 80.0),
                child: Text(
                  'Welcome Back!',
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.white,
                    fontFamily: 'Gotham',
                  ),
                ),
              ),
            ),
                // octopus image
            Container(
              child: Padding(
                padding: EdgeInsets.only(top: 30.0),
                child: Image.asset('assets/octopus.png'),
              ),
            ),

            // login in centre of page
            Container(
              child: Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 60.0),
                  child: Text(
                    'Login',
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
          
            // email address
            Container(
              child: Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 40.0),
                  child: Text(
                    'Email Address:',
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.amberAccent,
                      fontFamily: 'Gotham',
                      ),
                    ),
                  ),
                ),
              ),
            
            // space to enter email
            Container(
              margin: EdgeInsets.only(top: 10.0, left: 50.0, right: 50.0),
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.grey)),
              ),
              child: Center(
                child: TextField(
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
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
                  padding: EdgeInsets.only(top: 40.0),
                  child: Text(
                    'Password:',
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.amberAccent,
                      fontFamily: 'Gotham',
                      ),
                    ),
                  ),
                ),
              ),

            /// space to enter password
            Container(
              margin: EdgeInsets.only(top: 10.0, left: 50.0, right: 50.0),
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.grey)),
              ),
              child: Center(
                child: TextField(
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
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
                  padding: EdgeInsets.only(top: 40.0),
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                      fontSize: 15.0,
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
                padding: EdgeInsets.only(top: 20.0),
                child: Center(
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/navigation');
                    },
                    color: Colors.greenAccent,
                    child: Text(
                      'Login',
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