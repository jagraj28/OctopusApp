import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class PastPayments extends StatefulWidget {
  @override
  _PastPaymentsState createState() => new _PastPaymentsState();
}

// widget for PastPayments page
class _PastPaymentsState extends State<PastPayments> {

  final List payments = [
    Colors.purple[800],
    Colors.purple[800],
    Colors.purple[800],
    Colors.purple[800],
    Colors.purple[800],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.deepPurple[900],
      resizeToAvoidBottomInset: true,

      body: Container(
        child: SingleChildScrollView(
          child: Column(

            children: <Widget>[
              Center(
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.only(top: 80.0),
                    child: Text(
                      'Past Payments',
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

              // carousel
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: CarouselSlider(
                    height: 400,
                    items: payments.map((i) {
                      return Builder(builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 25.0),
                          decoration: BoxDecoration(
                            color: i,
                            borderRadius: BorderRadius.circular(40.0)
                          ),
                        );
                      });
                    }).toList(),
                    enlargeCenterPage: true,
                  ),
                ),
              ),

              Container(
                margin: const EdgeInsets.only(top: 200.0),
                child: Text(
                    'Think something\'s wrong?',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Gotham',
                      color: Colors.white,
                    ),
                  ),
              ),

              // extra info
              Container(
                margin: const EdgeInsets.only(top: 10.0),
                padding: const EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 3.0,
                    color: Colors.pinkAccent[400],
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Text(
                  'Get in touch with us!',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontFamily: 'Gotham',
                    color: Colors.white,
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