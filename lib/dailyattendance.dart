import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:employee_flutter_app/profile.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
final _firestore= FirebaseFirestore.instance;
final FirebaseAuth auth = FirebaseAuth.instance;
class Daily extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return DailyState();
  }

}

class DailyState extends State<Daily> {
  @override
  Widget build(BuildContext context) {
    DateTime now = new DateTime.now();
    DateTime date = new DateTime(now.year, now.month, now.day);
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.purple,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
              ),
              Text('Attendance Marker',style: TextStyle(color: Colors.white,fontSize: 30),),
              SizedBox(
                height: 75,
              ),
              Text('Please mark your attendance.',style: TextStyle(color: Colors.white,fontSize: 18),),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                 GestureDetector(
                   child: CircleAvatar(
                     backgroundColor: Colors.white,
                     radius: 30,
                     child: Icon(
                       Icons.check,
                       color: Colors.green,
                       size: 40,
                     ),
                   ),
                   onTap: (){
                     _firestore.collection('attendance').doc(auth.currentUser.uid).collection(date.toString().substring(0,date.toString().indexOf(' '))).add(
                       {
                         'attendance':'P',
                       }
                     );
                     Navigator.push(context,MaterialPageRoute(builder: (context)=>Profile()));
                   },
                 ),
                 GestureDetector(
                   child: CircleAvatar(
                     backgroundColor: Colors.white,
                     radius: 30,
                     child: Icon(
                       Icons.close,
                       color: Colors.red,
                       size: 40,
                     ),
                   ),
                   onTap: (){
                     _firestore.collection('attendance').doc(auth.currentUser.uid).collection(date.toString().substring(0,date.toString().indexOf(' '))).add(
                         {
                           'attendance':'A',
                         }
                     );
                     Navigator.push(context,MaterialPageRoute(builder: (context)=>Profile()));
                   },
                 ),
                ],
              ),
            ],
          )
        ),
      ),
    );
  }
}