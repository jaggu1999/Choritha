import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
class CitSignup extends StatefulWidget{
  CitSignupState createState() => CitSignupState();
}
class CitSignupState extends State<CitSignup>{
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _email, _password;
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(15.0, 25.0, 0.0, 0.0),
            child:
            Row(
              children: <Widget>[
                Text(
                  'Signup',
                  style:
                  TextStyle(fontSize: 60.0, fontWeight: FontWeight.bold),
                ),
                //SizedBox(width: 5.0),
                Text(
                  '.',
                  style: TextStyle(
                      fontSize: 60.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.green),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(top: 100),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.orangeAccent,
            ),
            child: Padding(
              padding: EdgeInsets.all(23),
              child: ListView(
                children: <Widget>[
                  Form(
                    key: _formKey,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 5, 0, 20),
                          child: Container(
                            color: Color(0xfff5f5f5),
                            child: TextFormField(
                              validator: (input) {
                                if(input.isEmpty){
                                  return "Please enter the Full Name";
                                }
                              },
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'SFUIDisplay'
                              ),
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'FULL NAME',
                                  prefixIcon: Icon(Icons.person_outline),
                                  labelStyle: TextStyle(
                                      fontSize: 15
                                  )
                              ),
                              //onSaved: (input) => _name = input,
                            ),
                          ),
                        ),
                        //SizedBox(height: 20,),
                        Container(
                          color: Color(0xfff5f5f5),
                          child: TextFormField(
                            //obscureText: true,
                            validator: (input) {
                              if(input.isEmpty){
                                return 'Please enter an Email ID';
                              }
                            },
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'SFUIDisplay'
                            ),
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'EMAIL',
                                prefixIcon: Icon(Icons.mail_outline),
                                labelStyle: TextStyle(
                                    fontSize: 15
                                )
                            ),
                            onSaved: (input) => _email = input,
                          ),
                        ),
                        SizedBox(height: 20,),
                        Container(
                          color: Color(0xfff5f5f5),
                          child: TextFormField(
                            //obscureText: true,
                            validator: (input) {
                              if(input.isEmpty){
                                return 'Please enter a Phone number';
                              }
                            },
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'SFUIDisplay'
                            ),
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'PHONE',
                                prefixIcon: Icon(Icons.phone_android),
                                labelStyle: TextStyle(
                                    fontSize: 15
                                )
                            ),
                            //onSaved: (input) => _phone = input,
                          ),
                        ),
                        SizedBox(height: 20,),
                        Container(
                          color: Color(0xfff5f5f5),
                          child: TextFormField(
                            obscureText: true,
                            validator: (input) {
                              if(input.length<6){
                                return 'Password should be atleast 6 characters';
                              }
                            },
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'SFUIDisplay'
                            ),
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'PASSWORD',
                                prefixIcon: Icon(Icons.lock_outline),
                                labelStyle: TextStyle(
                                    fontSize: 15
                                )
                            ),
                            onSaved: (input) => _password = input,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: MaterialButton(
                            onPressed: signUp,
                            child: Text('SIGN UP',
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
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Already have an Account?',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            fontSize: 15,
                            color: Colors.black54
                        ),
                      ),
                      SizedBox(width: 5,),
                      InkWell(
                          onTap: (){
                            Navigator.of(context).pop();
                            Navigator.of(context).pop();
                          },
                          child: Text(
                              'Sign In',
                              style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 15,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  //decoration: TextDecoration.underline,
                                  //decorationColor: Colors.black54,
                                  //decorationThickness: 2,
                              )
                          )
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
  void signUp() async {
    final formState = _formKey.currentState;
    if(formState.validate()){
      formState.save();
      try{
        FirebaseUser user = (await FirebaseAuth.instance.createUserWithEmailAndPassword(email: _email, password: _password)).user;
        await user.sendEmailVerification();
        Navigator.of(context).pushReplacementNamed('/citser');
      }catch(e){
        switch(e.code){
          case "ERROR_EMAIL_ALREADY_IN_USE":
            {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      content: Container(
                        child: Text('This email is already in use.'),
                      ),
                    );
                  });
            }
            break;
          default:
            {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      content: Container(
                        child: Text('Invalid data!'),
                      ),
                    );
                  });
            }
        }
      }
    }
  }
}