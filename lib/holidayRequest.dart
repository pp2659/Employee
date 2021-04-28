import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
final _firestore= FirebaseFirestore.instance;
final FirebaseAuth auth = FirebaseAuth.instance;
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
        backgroundColor: Colors.purple,
        title: Text("Holiday Request"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
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
                                color: Colors.purple,
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
                              onChanged: (newValue) {
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
                                color: Colors.purple,
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
                              onChanged: (newValue) {
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
                                color: Colors.purple,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextFormField(
                              keyboardType: TextInputType.name,
                              decoration: InputDecoration(
                                hintText: 'Enter your Department',
                              ),
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Please enter your Department';
                                }
                                return null;
                              },
                              onChanged: (newValue) {
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
                                color: Colors.purple,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextFormField(
                              keyboardType: TextInputType.name,
                              decoration: InputDecoration(
                                hintText: 'Enter your Reason',
                              ),
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Please enter your Reason';
                                }
                                return null;
                              },
                              onChanged: (newValue) {
                                reason = newValue;
                              },
                            ),
                            SizedBox(height: 30,),
                            Center(
                              child: RaisedButton(
                                child: Text("Submit"),
                                color: Colors.purple,
                                textColor: Colors.white,
                                onPressed: () {
                                _firestore.collection('holiday').doc(auth.currentUser.uid).collection(name).add(
                                {
                                  'name':name,
                                  'id':id,
                                   'department':department,
                                   'reason':reason,
                                  }
                                     ).then((value) => print(value.id));
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
         ],
        ),
      ),
    );
  }
}

