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
                padding: EdgeInsets.only(top: 40.0),
                child: Image.asset('assets/octopus.png'),
              ),
            ),
          
            // email address
            Container(
              child: Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 80.0),
                  child: Text(
                    'Email Address:',
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.white,
                      fontFamily: 'Gotham',
                      ),
                    ),
                  ),
                ),
              ),

            // space to enter email
            Container(
              margin: const EdgeInsets.only(top: 12.0, left: 50.0, right: 50.0),
              padding: const EdgeInsets.only(left: 15.0),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2.0,
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.circular(40.0),
              ),
              child: Center(
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontFamily: 'Gotham',
                  ),
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email, color: Colors.white),
                    hintText: 'Email',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),

            // password
            Container(
              child: Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 25.0),
                  child: Text(
                    'Password:',
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.white,
                      fontFamily: 'Gotham',
                      ),
                    ),
                  ),
                ),
              ),

            /// space to enter password
            Container(
              margin: const EdgeInsets.only(top: 12.0, left: 50.0, right: 50.0),
              padding: const EdgeInsets.only(left: 15.0),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2.0,
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.circular(40.0),
              ),
              child: Center(
                child: TextField(
                  obscureText: true,
                  autocorrect: false,
                  keyboardType: TextInputType.visiblePassword,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontFamily: 'Gotham',
                  ),
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock, color: Colors.white),
                    hintText: 'Password',
                    hintStyle: TextStyle(color: Colors.grey),
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
                padding: EdgeInsets.only(top: 20.0),
                child: Center(
                  child: RaisedButton.icon(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/navigation');
                    },
                    icon: Icon(Icons.input),
                    color: Colors.greenAccent[400],
                    label: Text(
                      'Login',
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