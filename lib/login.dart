import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
class LoginPage extends StatefulWidget{
  LoginPageState createState() => LoginPageState();
}
class LoginPageState extends State<LoginPage>{
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _email, _password;
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () => Future.value(false),
    child: Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
                padding: EdgeInsets.fromLTRB(15.0, 55.0, 0.0, 0.0),
                child: Text(
                    'Hello',
                    style: TextStyle(
                        fontSize: 60.0, fontWeight: FontWeight.bold, color: Colors.black)
                )
            ),
            SizedBox(height: 50.0),
            Container(
              padding: EdgeInsets.only(left: 15.0, top: 110.0),
              child:
              Row(
                children: <Widget>[
                  Text(
                      'There',
                      style: TextStyle(
                          fontSize: 60.0, fontWeight: FontWeight.bold, color: Colors.black)
                  ),
                  SizedBox(width: 5.0),
                  Text(
                      '..!',
                      style: TextStyle(
                          fontSize: 60.0, fontWeight: FontWeight.bold, color: Colors.green)
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(top: 200),
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
                                    return 'Please enter an Email';
                                  }
                                },
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'SFUIDisplay'
                                ),
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'USER NAME',
                                    prefixIcon: Icon(Icons.person_outline),
                                    labelStyle: TextStyle(
                                        fontSize: 15
                                    )
                                ),
                                onSaved: (input) => _email = input,
                              ),
                            ),
                          ),
                          Container(
                            color: Color(0xfff5f5f5),
                            child: TextFormField(
                              validator: (input) {
                                if(input.length<6){
                                  return 'Password should be atleast 6 characters';
                                }
                              },
                              obscureText: true,
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
                              onPressed: _signIn,
                              child: Text('SIGN IN',
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
                    SizedBox(height: 20,),
                    InkWell(
                        onTap: (){
                          Navigator.of(context).pushNamed('/forpass');
                        },
                        child: Center(
                          child: Text(
                            'Forgot Password',
                             style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold,
                                //decoration: TextDecoration.underline,
                                //decorationColor: Colors.green,
                                //decorationThickness: 2
                            ),
                        ),
                        ),
                    ),
                    SizedBox(height: 20.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'New to Choritha?',
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
                              Navigator.of(context).pushNamed('/usertypo');
                            },
                            child: Text(
                                'Sign Up',
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
    ),
    );
  }
  void _signIn() async {
    final FormState form = _formKey.currentState;
    final FirebaseAuth _firebaseauth = FirebaseAuth.instance;
    if(_formKey.currentState.validate()){
      form.save();
      try{
        FirebaseUser user= (await _firebaseauth.signInWithEmailAndPassword(email: _email, password: _password)).user;
        Navigator.of(context).pushReplacementNamed('/citser');
      }
      catch(e){
        switch (e.code) {
          case "ERROR_USER_NOT_FOUND":
            {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      content: Container(
                        child: Text('The username or password is incorrect.'),
                      ),
                    );
                  });
            }
            break;
          case "ERROR_WRONG_PASSWORD":
            {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      content: Container(
                        child: Text('The username or password is incorrect.'),
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
                        child: Text('The username or password is incorrect.'),
                      ),
                    );
                  });
            }
        }
      }
    }
  }
}