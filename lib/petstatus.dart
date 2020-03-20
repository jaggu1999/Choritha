import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
class PetStatus extends StatefulWidget{
  PetStatusState createState() => PetStatusState();
}
class PetStatusState extends State<PetStatus>{
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _email, _password;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Petition Status'),
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
                          padding: EdgeInsets.fromLTRB(23, 50, 23, 20),
                          child: Container(
                            color: Color(0xfff5f5f5),
                            child: TextFormField(
                              validator: (input) {
                                if(input.isEmpty){
                                  return 'Please enter a Petition ID';
                                }
                              },
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'SFUIDisplay'
                              ),
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'PETITION ID',
                                  prefixIcon: Icon(Icons.content_paste),
                                  labelStyle: TextStyle(
                                      fontSize: 15
                                  )
                              ),
                              onSaved: (input) => _email = input,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(23, 20, 23, 20),
                          child: Container(
                            color: Color(0xfff5f5f5),
                            child: TextFormField(
                              validator: (input) {
                                if(input.isEmpty){
                                  return 'Please enter the Petitioner Name';
                                }
                              },
                              //obscureText: true,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'SFUIDisplay'
                              ),
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'PETITIONER NAME',
                                  prefixIcon: Icon(Icons.person),
                                  labelStyle: TextStyle(
                                      fontSize: 15
                                  )
                              ),
                              onSaved: (input) => _password = input,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(23, 20, 23, 20),
                          child: MaterialButton(
                            onPressed: status,
                            child: Text('CHECK',
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
          )
        ],
      ),
    );
  }
  Future<void> status() async {
    final formState = _formKey.currentState;
    if(formState.validate()){
      formState.save();
      try{
        await FirebaseAuth.instance.signInWithEmailAndPassword(email: _email, password: _password);
        //Navigator.push(context, MaterialPageRoute(builder: (context) => Citser()));
      }
      catch(e){
        print(e.message);
      }
    }
  }
}