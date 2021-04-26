import 'package:employee_flutter_app/attendence.dart';
import 'package:employee_flutter_app/holidayRequest.dart';
import 'package:employee_flutter_app/login.dart';
import 'package:employee_flutter_app/profile.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
        routes: {
          '/login': (context) => Login(),
          '/attendence': (context) => Attendence(),
          '/profile': (context) => Profile(),
          '/holiday': (context) => Holiday(),
        },
      home: Login(),
    );
  }
}


