import 'package:flutter/material.dart';

class EditType extends StatefulWidget {
  @override
  _EditTypeState createState() => new _EditTypeState();
}

// widget for EditType page
class _EditTypeState extends State<EditType> {

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
                Center(
                  child: Container(
                    child: Padding(
                      padding: EdgeInsets.only(top: 80.0),
                      child: Text(
                        'Edit',
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
                    'New Sort Code:',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontFamily: 'Gotham',
                      color: Colors.white,
                    ),
                  ),
                ),

                Container(
                  margin: const EdgeInsets.only(top: 15.0, left: 120.0, right: 120.0),
                  padding: const EdgeInsets.only(left: 15.0),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2.0,
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: Center(
                    child: TextField(
                      keyboardType: TextInputType.number,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontFamily: 'Gotham',
                      ),
                      decoration: InputDecoration(
                        hintText: 'Sort Code',
                        hintStyle: TextStyle(color: Colors.grey),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),

                Container(
                  margin: const EdgeInsets.only(top: 30.0),
                  child: Text(
                    'New Account Number:',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontFamily: 'Gotham',
                      color: Colors.white,
                    ),
                  ),
                ),

                Container(
                  margin: const EdgeInsets.only(top: 15.0, left: 100.0, right: 100.0),
                  padding: const EdgeInsets.only(left: 15.0),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2.0,
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: Center(
                    child: TextField(
                      keyboardType: TextInputType.number,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontFamily: 'Gotham',
                      ),
                      decoration: InputDecoration(
                        hintText: 'Account Number',
                        hintStyle: TextStyle(color: Colors.grey),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),

                Container(
                  margin: const EdgeInsets.only(top: 40.0),
                  child: Text(
                    'Are you sure about this?',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Gotham',
                      color: Colors.redAccent[400],
                    ),
                  ),
                ),

                Container(
                  child: Center(
                    child: Row(
                      children: <Widget>[

                        Container(
                          child: Padding(
                            padding: EdgeInsets.only(left: 70.0, top: 20.0),
                            child: ButtonTheme(
                              height: 40.0,
                              child: RaisedButton.icon(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: Icon(Icons.cancel),
                                color: Colors.redAccent[400],
                                label: Text(
                                  'Cancel',
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
                            padding: EdgeInsets.only(left: 20.0, top: 20.0),
                            child: ButtonTheme(
                              height: 40.0,
                              child: RaisedButton.icon(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: Icon(Icons.check_circle),
                                color: Colors.greenAccent[400],
                                label: Text(
                                  'Confirm',
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

              ],
            ),
          ),
        ),
      ),
    );
  }
}