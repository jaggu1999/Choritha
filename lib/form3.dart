import 'package:flutter/material.dart';
class Form3 extends StatefulWidget{
  @override
  Form3State createState() =>  Form3State();
}
class Form3State extends State<Form3>{
  Widget build(BuildContext context){
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 100),
        child: Image.asset('images/form3.PNG',
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }
}