import 'package:flutter/material.dart';

class EditSchedule extends StatefulWidget {
  @override
  _EditScheduleState createState() => new _EditScheduleState();
}

// widget for EditSchedule page
class _EditScheduleState extends State<EditSchedule> {

  String dropdownstring = 'Selection';

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
                      'Current date:',
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
                    '5th of the month',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Gotham',
                      color: Colors.white,
                    ),
                  ),
                ),

                Container(
                  margin: const EdgeInsets.only(top: 30.0),
                  child: Text(
                      'New date:',
                      style: TextStyle(
                        fontSize: 25.0,
                        fontFamily: 'Gotham',
                        color: Colors.white,
                      ),
                    ),
                ),

                // dropdown for date
                Container(
                  margin: const EdgeInsets.only(top: 10.0),
                  padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 10.0, bottom: 15.0),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2.0,
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: DropdownButton <String>(
                    dropdownColor: Colors.grey[600],
                    value: dropdownstring,
                    onChanged: (String newValue) {
                      setState(() {
                        dropdownstring = newValue;
                      });
                    },
                    items: <String> ['Selection', '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', '23', '24', '25', '26', '27', '28'].map<DropdownMenuItem<String>> ((String value) {
                      return DropdownMenuItem<String> (
                        value: value,
                        child: Center(
                          child: Text(
                            value, 
                            style: TextStyle(
                              color: Colors.white,
                              decorationColor: Colors.white,
                              fontFamily: 'Gotham',
                              fontSize: 20.0,
                            ),
                          ),
                        )
                      );
                    }).toList()
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