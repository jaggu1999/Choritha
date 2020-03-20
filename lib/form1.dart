import 'package:flutter/material.dart';
class Form1 extends StatefulWidget{
  @override
  Form1State createState() =>  Form1State();
}
class Form1State extends State<Form1>{
  Widget build(BuildContext context){
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 150),
        child: Image.asset('images/form1.PNG',
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }
}