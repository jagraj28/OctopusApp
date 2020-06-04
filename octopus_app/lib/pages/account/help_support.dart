import 'package:flutter/material.dart';

class HelpSupport extends StatefulWidget {
  @override
  _HelpSupportState createState() => new _HelpSupportState();
}

// widget for HelpSupport page
class _HelpSupportState extends State<HelpSupport> {

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
                      'Help and Support',
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
                  'Contact Us:',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontFamily: 'Gotham',
                    color: Colors.white,
                  ),
                ),
              ),

              Container(
                margin: const EdgeInsets.only(top: 10.0),
                child: Text(
                  'Online is the best way to get in\ntouch with our customer service\nteam, 7 days a week, and we\nusually reply to enquiries within\na few hours!',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Gotham',
                    color: Colors.white,
                  ),
                ),
              ),

              Container(
                margin: const EdgeInsets.only(top: 10.0),
                padding: const EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2.0,
                    color: Colors.pinkAccent[400],
                  ),
                  borderRadius: BorderRadius.circular(50.0),
                ),
                child: Text(
                  'hello@octopus.energy',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Gotham',
                    color: Colors.white,
                  ),
                ),
              ),

              Container(
                margin: const EdgeInsets.only(top: 40.0),
                child: Text(
                  'Business Enquiries:',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontFamily: 'Gotham',
                    color: Colors.white,
                  ),
                ),
              ),

              Container(
                margin: const EdgeInsets.only(top: 10.0),
                padding: const EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2.0,
                    color: Colors.pinkAccent[400],
                  ),
                  borderRadius: BorderRadius.circular(50.0),
                ),
                child: Text(
                  'business@octopus.energy',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Gotham',
                    color: Colors.white,
                  ),
                ),
              ),

              Container(
                margin: const EdgeInsets.only(top: 40.0),
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 3.0,
                    color: Colors.amberAccent[400],
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Text(
                  'You can also message us\n on Facebook or Twitter!',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Gotham',
                    color: Colors.white,
                  ),
                ),
              ),

              Container(
                margin: const EdgeInsets.only(top: 40.0),
                child: Text(
                  'Speak to us:',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontFamily: 'Gotham',
                    color: Colors.white,
                  ),
                ),
              ),

              Container(
                margin: const EdgeInsets.only(top: 10.0),
                child: Text(
                  'If you have an urgent issue you\n    can always call us for help.',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Gotham',
                    color: Colors.white,
                  ),
                ),
              ),

              Container(
                margin: const EdgeInsets.only(top: 10.0),
                padding: const EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2.0,
                    color: Colors.pinkAccent[400],
                  ),
                  borderRadius: BorderRadius.circular(50.0),
                ),
                child: Text(
                  '0808 164 1088',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Gotham',
                    color: Colors.white,
                  ),
                ),
              ),

              Container(
                margin: const EdgeInsets.only(top: 10.0),
                child: Text(
                  'For business customers:',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Gotham',
                    color: Colors.white,
                  ),
                ),
              ),

              Container(
                margin: const EdgeInsets.only(top: 10.0),
                padding: const EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2.0,
                    color: Colors.pinkAccent[400],
                  ),
                  borderRadius: BorderRadius.circular(50.0),
                ),
                child: Text(
                  '020 3389 5613',
                  style: TextStyle(
                    fontSize: 20.0,
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