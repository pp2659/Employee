import 'package:flutter/material.dart';

class Holiday extends StatefulWidget {
  @override
  _HolidayState createState() => _HolidayState();
}

class _HolidayState extends State<Holiday> {
  @override
  final GlobalKey<FormState> _formKey = GlobalKey();
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  String name, id, department, reason;
  Widget build(BuildContext context) {
    return Scaffold(

      key: _scaffoldKey,
      appBar: AppBar(
        title: Text("Holiday Request"),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Stack(children: [
            Container(
              height: MediaQuery.of(context).size.height * 3,
              width: MediaQuery.of(context).size.width * 2,
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: NetworkImage(
                      "https://image.freepik.com/free-photo/close-up-white-poster-texture_293060-1697.jpg"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0, right: 12, top: 80),
              child: Container(
                height: 450,
                width: 500,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Name:",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Enter your name',
                            ),
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Please enter your Name';
                              }
                              return null;
                            },
                            onSaved: (newValue) {
                              name = newValue;
                            },
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Employee ID:",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextFormField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: 'Enter your Employee ID',
                            ),
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Please enter your Employee ID';
                              }
                              return null;
                            },
                            onSaved: (newValue) {
                              id = newValue;
                            },
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Department:",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextFormField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: 'Enter your Department',
                            ),
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Please enter your Department';
                              }
                              return null;
                            },
                            onSaved: (newValue) {
                              department = newValue;
                            },
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Reason:",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextFormField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: 'Enter your Reason',
                            ),
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Please enter your Reason';
                              }
                              return null;
                            },
                            onSaved: (newValue) {
                              reason = newValue;
                            },
                          ),
                          SizedBox(height: 30,),
                          Center(
                            child: RaisedButton(
                              child: Text("Submit"),
                              onPressed: () {
                                print("pressed");
                                _scaffoldKey.currentState.showSnackBar(
                                    new SnackBar(
                                      content: new Text('Request Submitted'),
                                    )
                                );
                              },),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
