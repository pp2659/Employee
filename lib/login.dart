import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:employee_flutter_app/profile.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'dailyattendance.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}
final _firestore= FirebaseFirestore.instance;
class _LoginState extends State<Login> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  String email='', password='';
  final _auth = FirebaseAuth.instance;
  @override

  Widget build(BuildContext context) {
    DateTime now = new DateTime.now();
    DateTime date = new DateTime(now.year, now.month, now.day);
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(

        key: _scaffoldKey,
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text("Login"),
        ),
        body: Container(
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
                height: 350,
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
                            "Email:",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.purple,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Enter your email',
                            ),
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Please enter your email';
                              }
                              return null;
                            },
                            onChanged: (newValue) {
                             email = newValue;

                            },
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Password:",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.purple,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: 'Enter your Password',
                            ),
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Please enter your Password';
                              }
                              return null;
                            },
                            onChanged: (newValue) {
                              password = newValue;
                            },
                          ),

                          SizedBox(height: 30,),
                          Center(
                            child: RaisedButton(
                              child: Text("Login"),
                              color: Colors.purple,
                              textColor: Colors.white,
                              onPressed: () async{
                                print(date.toString().substring(0,date.toString().indexOf(' ')));
                                print("pressed");
                                try{
                                final newUser = await _auth.signInWithEmailAndPassword(email: email, password: password);
                                if(newUser!= null ){
                                  _firestore.collection('attendance').doc(_auth.currentUser.uid).collection(date.toString().substring(0,date.toString().indexOf(' '))).get().then((docSnapshot)=>{
                                    if (docSnapshot.docs.length==0) {
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Daily()))
                                    }
                                    else
                                      {
                                      Navigator.push(context,
                                      MaterialPageRoute(builder: (context) => Profile()))
                                      }
                                  });
                                }
                                }
                                catch(e){
                                  print(e);
                                }
                              },),
                          ),
                          SizedBox(height: 20,),
                          Center(child: Text('Contact your office for Email and Password '))
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
