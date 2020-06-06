import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => new _LoginState();
}

// widget for login page
class _LoginState extends State<Login> {

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.deepPurple[900],
      resizeToAvoidBottomInset: true,

      // code for entire body
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: Container(
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
            
              // login
              Container(
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 100.0),
                    child: Text(
                      'Login',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 27.0,
                        color: Colors.white,
                        fontFamily: 'Gotham',
                        ),
                      ),
                    ),
                  ),
                ),

              // space to enter email and password
              Form(
                key: formKey,
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(top: 20.0, left: 50.0, right: 50.0),
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Center(
                        child: TextFormField(
                          validator: (String value) {
                            if (value.isEmpty) {
                              return "Please enter a valid email";
                            }
                          },
                          keyboardType: TextInputType.emailAddress,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontFamily: 'Gotham',
                          ),
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.greenAccent, width: 2.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white, width: 2.0),
                            ),
                            prefixIcon: Icon(Icons.email, color: Colors.white),
                            hintText: 'Email',
                            hintStyle: TextStyle(color: Colors.grey),
                            contentPadding: EdgeInsets.only(top: 16.0),
                            errorStyle: TextStyle(
                              fontFamily: 'Gotham', 
                              fontSize: 15.0, 
                              color: Colors.redAccent[400]
                            ),
                          ),
                        ),
                      ),
                    ),

                    Container(
                      margin: const EdgeInsets.only(top: 20.0, left: 50.0, right: 50.0),
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Center(
                        child: TextFormField(
                          validator: (String value) {
                            if (value.isEmpty) {
                              return "Please enter a valid password";
                            }
                          },
                          obscureText: true,
                          autocorrect: false,
                          keyboardType: TextInputType.visiblePassword,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontFamily: 'Gotham',
                          ),
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.greenAccent, width: 2.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white, width: 2.0),
                            ),
                            prefixIcon: Icon(Icons.lock, color: Colors.white),
                            hintText: 'Password',
                            hintStyle: TextStyle(color: Colors.grey),
                            contentPadding: EdgeInsets.only(top: 16.0),
                            errorStyle: TextStyle(
                              fontFamily: 'Gotham', 
                              fontSize: 15.0, 
                              color: Colors.redAccent[400]
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // forgot password
              Container(
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 25.0),
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.redAccent[400],
                        fontFamily: 'Gotham',
                        ),
                      ),
                    ),
                  ),
                ),

              // login button
              Container(
                child: Padding(
                  padding: EdgeInsets.only(top: 30.0),
                  child: ButtonTheme(
                    minWidth: 150.0,
                    height: 40.0,
                    child: RaisedButton.icon(
                      onPressed: () {
                        if (formKey.currentState.validate()) {
                        Navigator.pushReplacementNamed(context, '/navigation');
                        }
                      },
                      icon: Icon(Icons.input),
                      color: Colors.greenAccent[400],
                      label: Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22.0,
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