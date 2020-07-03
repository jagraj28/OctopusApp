import 'package:flutter/material.dart';

class FAQ extends StatefulWidget {
  @override
  _FAQState createState() => new _FAQState();
}

// widget for FAQ page
class _FAQState extends State<FAQ> {

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
                      'FAQ\'s',
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
                margin: const EdgeInsets.only(top: 20.0),
                child: Text(
                  'I might have an emergency!',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Gotham',
                    color: Colors.white,
                  ),
                ),
              ),

              Container(
                margin: const EdgeInsets.only(top: 10.0, left: 30.0, right: 30.0),
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 3.0,
                    color: Colors.amberAccent[400],
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Text(
                  'If your meter is sparking or on fire,\ncall 999 immediately.\n\nSmell gas or suspect a leak?\n\nCall the National Gas Emergency\nHelpline on 0800 111 999.\n\nPower Cuts:\n\nCall 105 to get help and advice\nfrom your local network operator.\n\nStill no luck? There’s a chance the problem is with your meter. Contact us to make sure. If this is the case, we can book an emergency appointment to exchange your electricity meter.\n\nCall us for help on our freephone number 0808 164 1088, 9am to 5pm Monday-Friday. Email us at emergency@octopus.energy or send us a message on Facebook or Twitter between 8am and 10pm, Monday - Sunday.',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontFamily: 'Gotham',
                    color: Colors.white,
                  ),
                ),
              ),

              Container(
                margin: const EdgeInsets.only(top: 30.0),
                child: Text(
                  'How can I get a refund?',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Gotham',
                    color: Colors.white,
                  ),
                ),
              ),

              Container(
                margin: const EdgeInsets.only(top: 10.0, left: 30.0, right: 30.0),
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 3.0,
                    color: Colors.amberAccent[400],
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Text(
                  'If we think you\'ve got more credit on your energy account than you need, you\'ll be able to request the excess back as long as you\'ve had an energy bill based on real meter readings in the last 14 days.\n\nTo ask for your credit back, just hit the little button underneath your balance on your online account dashboard.\n\nIf you think you\'re due a refund but you don\'t see an option on your online account, just email us at hello@octopus.energy to talk to the team. (Make sure you\'ve given up-to-date meter readings within the last 14 days.)',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontFamily: 'Gotham',
                    color: Colors.white,
                  ),
                ),
              ),

              Container(
                margin: const EdgeInsets.only(top: 30.0),
                child: Text(
                  'When can I get a smart meter?',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Gotham',
                    color: Colors.white,
                  ),
                ),
              ),

              Container(
                margin: const EdgeInsets.only(top: 10.0, left: 30.0, right: 30.0),
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 3.0,
                    color: Colors.amberAccent[400],
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Text(
                  'Yes. The smart meter programme is at a big transition phase as we start fitting the latest generation of the meter, which doesn\'t yet work everywhere in the country.\n\nIf you would like us to prioritise you for an installation, please register your interest and we will be in contact shortly.\n\nJust so you know, if you have a SMETS1, it doesn\'t need to be upgraded to SMETS2. Both are great pieces of tech, the key difference between SMETS1 and SMETS2 is that SMETS2 have the inbuilt functionality to let you change supplier without losing their smart ability.\n\nHowever, existing SMETS1 meters will be upgraded remotely (with no engineer visit required) with this functionality later this year.',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontFamily: 'Gotham',
                    color: Colors.white,
                  ),
                ),
              ),

              Container(
                margin: const EdgeInsets.only(top: 30.0),
                child: Text(
                  'My in-home display isn\'t working?',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Gotham',
                    color: Colors.white,
                  ),
                ),
              ),

              Container(
                margin: const EdgeInsets.only(top: 10.0, left: 30.0, right: 30.0),
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 3.0,
                    color: Colors.amberAccent[400],
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Text(
                  'Your in-home display uses a HAN, or Home Area Network, to pick up readings from your smart meter. In some cases, your in-home display will be too far from your meter to receive the readings.\n\nThat\'s fine, and it won\'t stop us receiving your readings - we get them from your meter via a WAN, or Wide Area Network, rather than from your display. If you take your display closer to your meter, it will pick up the latest data.',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontFamily: 'Gotham',
                    color: Colors.white,
                  ),
                ),
              ),

              Container(
                margin: const EdgeInsets.only(top: 30.0),
                child: Text(
                  'Do you send out meter readers?',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Gotham',
                    color: Colors.white,
                  ),
                ),
              ),

              Container(
                margin: const EdgeInsets.only(top: 10.0, left: 30.0, right: 30.0),
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 3.0,
                    color: Colors.amberAccent[400],
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Text(
                  'We\'ll send someone to collect a reading from your meters if you\'re unable to take your own meter readings, or you haven\'t given us one in several months.\n\nThe people who\'ll come round to collect your readings are from two independent meter engineers called TMA and Lowri Beck.\n\nWe only send meter readers around because it\'s important to keep your energy account in good health - ensuring you\'re not overpaying for your energy, or underpaying and building up a surprise debt. The best way you can make sure you\'re paying the right monthly amount to cover your energy bill is to take regular meter readings.\n\nWe remind you each month about readings, but if you haven\'t given us any for a while - and we mean, a while - we might send a meter reader around to take them. We need, at the very least, one valid meter reading every year.',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontFamily: 'Gotham',
                    color: Colors.white,
                  ),
                ),
              ),

              Container(
                margin: const EdgeInsets.only(top: 30.0),
                child: Text(
                  'Do you offer the Warm Home Discount?',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Gotham',
                    color: Colors.white,
                  ),
                ),
              ),

              Container(
                margin: const EdgeInsets.only(top: 10.0, left: 30.0, right: 30.0, bottom: 40.0),
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 3.0,
                    color: Colors.amberAccent[400],
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Text(
                  'Since Winter 2019, we\'ve offered the Warm Home Discount to eligible households. Applications for this year are closed, but we will update this page as soon as next year\'s opens.',
                  style: TextStyle(
                    fontSize: 18.0,
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