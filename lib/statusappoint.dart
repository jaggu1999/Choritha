import 'package:flutter/material.dart';
class StatusAppoint extends StatefulWidget{
  @override
  StatusAppointState createState() =>  StatusAppointState();
}
class StatusAppointState extends State<StatusAppoint>{
  Widget build(BuildContext context){
    //loadStatus();
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Appointments'),
        backgroundColor: Colors.green,
        //automaticallyImplyLeading: false,
      ),
      body: Stack(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.fromLTRB(20, 80, 20, 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.orangeAccent,
            ),
          ),
          Container(
            child: Center(
              child: Text(
                'No Data Available.'
              ),
            ),
          ),
        ],
      ),
    );
  }
  void loadStatus(){
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Container(
              child: Text('No Data Available.'),
            ),
          );
        });
  }
}