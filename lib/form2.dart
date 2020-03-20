import 'package:flutter/material.dart';
class Form2 extends StatefulWidget{
  @override
  Form2State createState() =>  Form2State();
}
class Form2State extends State<Form2>{
  Widget build(BuildContext context){
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 150),
        child: Image.asset('images/form2.PNG',
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }
}