import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ForPass extends StatefulWidget{
  ForPassState createState() => ForPassState();
}
class ForPassState extends State<ForPass>{
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _email;
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Password Reset'),
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
            child: Padding(
              padding: EdgeInsets.all(0),
              child: ListView(
                children: <Widget>[
                  Form(
                    key: _formKey,
                    child: Column(
                      children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(30, 50, 30, 20),
                        child: Container(
                          color: Color(0xfff5f5f5),
                          child: TextFormField(
                            validator: (input) {
                              if(input.isEmpty){
                                return 'Please enter an Email';
                              }
                            },
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'SFUIDisplay'
                            ),
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'EMAIL',
                                prefixIcon: Icon(Icons.email),
                                labelStyle: TextStyle(
                                    fontSize: 15
                                )
                            ),
                            onSaved: (input) => _email = input,
                          ),
                        ),
            ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
                          child: MaterialButton(
                            onPressed: _passres,
                            child: Text('RESET',
                              style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'SFUIDisplay',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            color: Colors.green,
                            elevation: 0,
                            minWidth: 400,
                            height: 50,
                            textColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
    ],
    ),
            ),
          ),
        ],
      ),
            );
  }
  void _passres() async {
    final FormState form = _formKey.currentState;
    final FirebaseAuth _firebaseauth = FirebaseAuth.instance;
    if(_formKey.currentState.validate()){
      form.save();
      try{
        await _firebaseauth.sendPasswordResetEmail(email: _email);
      }
      catch(e) {
        print(e);
      }
    }
  }
}