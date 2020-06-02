import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class PastReadings extends StatefulWidget {
  @override
  _PastReadingsState createState() => new _PastReadingsState();
}

// widget for PastReadings page
class _PastReadingsState extends State<PastReadings> {

  final List payments = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.blue
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
                      'Past Readings',
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
                            borderRadius: BorderRadius.circular(20.0)
                          ),
                        );
                      });
                    }).toList(),
                    enlargeCenterPage: true,
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