import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  @override
  _PaymentState createState() => new _PaymentState();
}

// widget for Payment page
class _PaymentState extends State<Payment> {

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
                        'One-Off Payment',
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
                      'Amount:',
                      style: TextStyle(
                        fontSize: 25.0,
                        fontFamily: 'Gotham',
                        color: Colors.white,
                      ),
                    ),
                ),

                Container(
                  margin: const EdgeInsets.only(top: 15.0, left: 150.0, right: 155.0),
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
                        hintText: 'Amount',
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
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),

                // buttons
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
                                icon: Icon(Icons.payment),
                                color: Colors.greenAccent[400],
                                label: Text(
                                  'Pay Now',
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