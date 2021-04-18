import 'package:employee_flutter_app/attendence.dart';
import 'package:employee_flutter_app/holidayRequest.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Stack(children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment(
                    0.8, 0.0), // 10% of the width, so there are ten blinds.
                colors: <Color>[
                  Color(0xffEE82EE),
                  Color(0xffFFA07A)
                ],
                // tileMode:
                //     TileMode.repeated,
              ),
            ),
          ),
          Center(
            child: Container(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                  child: Text("Request Holiday"),
                  color: Colors.purple,
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Holiday()));
                  },
                ),
                SizedBox(
                  width: 20,
                ),
                RaisedButton(
                  child: Text("Check Profile"),
                  color: Colors.purple,
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Attendence()));
                  },
                ),
              ],
            )),
          ),
        ]),
      ),
    );
  }
}
