import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:octopus_app/pages/home.dart';
import 'package:octopus_app/pages/readings.dart';
import 'package:octopus_app/pages/bills.dart';
import 'package:octopus_app/pages/account.dart';

class Navigation extends StatefulWidget {
  @override
  _NavigationState createState() => new _NavigationState();
}

// widget for Navigation page
class _NavigationState extends State<Navigation> {

  int _page = 0;

  final _pageOption = [
    Home(),
    Readings(),
    Bills(),
    Account(),
  ];

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
          Icon(Icons.home, size: 30),
          Icon(Icons.remove_red_eye, size: 30),
          Icon(Icons.payment, size: 30),
          Icon(Icons.account_circle, size: 30),
        ],
        
        animationDuration: Duration(
          milliseconds: 200,
        ),
        animationCurve: Curves.bounceInOut,

        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
      ),

      body: _pageOption[_page],

    );
  }
}