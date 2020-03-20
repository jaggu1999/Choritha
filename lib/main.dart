import 'package:flutter/material.dart';
import 'login.dart';
import 'usertypo.dart';
import 'polsignup.dart';
import 'citsignup.dart';
import 'citser.dart';
import 'forms.dart';
import 'form1.dart';
import 'form2.dart';
import 'form3.dart';
import 'forpass.dart';
import 'petstatus.dart';
import 'beats.dart';
import 'appoint.dart';
import 'statusappoint.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/login':(BuildContext context) => LoginPage(),
        '/usertypo':(BuildContext context) => Usertypo(),
        '/polsignup':(BuildContext context) => PolSignupPage(),
        '/citsignup':(BuildContext context) => CitSignup(),
        '/citser':(BuildContext context) => Citser(),
        '/forms':(BuildContext context) => Forms(),
        '/form1':(BuildContext context) => Form1(),
        '/form2':(BuildContext context) => Form2(),
        '/form3':(BuildContext context) => Form3(),
        '/petstatus':(BuildContext context) => PetStatus(),
        '/forpass':(BuildContext context) => ForPass(),
        '/beats':(BuildContext context) => Beats(),
        '/appoint':(BuildContext context) => Appoint(),
        '/statusappoint':(BuildContext context) => StatusAppoint(),
      },
      home: LoginPage(),
    );
  }
}