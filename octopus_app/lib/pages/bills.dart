import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

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
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.white,
        backgroundColor: Colors.deepPurple[900],
        buttonBackgroundColor: Colors.white,
        height: 60.0,
        items: <Widget>[
          Icon(Icons.home, size: 35),
          Icon(Icons.remove_red_eye, size: 35),
          Icon(Icons.payment, size: 35),
          Icon(Icons.account_circle, size: 35),
        ],
        animationDuration: Duration(
          milliseconds: 200,
        ),
        animationCurve: Curves.bounceInOut,
        onTap: (index) {
          setState(() {
            index = index;
          });
        },
      ),

      body: Container(),
    );
  }
}