import 'package:flutter/material.dart';

class AdSignupPage extends StatefulWidget {
  @override
  _AdSignupPageState createState() => _AdSignupPageState();
}
class _AdSignupPageState extends State<AdSignupPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children:
        <Widget>[
          Container(
              child: Stack(
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
                        //SizedBox(width: ),
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
                    padding: EdgeInsets.only(top: 90.0, left: 20.0, right: 20.0),
                    child: Form(
                        child: Column(
                          children: <Widget>[
                            TextField(
                              decoration: InputDecoration(
                                  labelText: 'FULL NAME ',
                                  labelStyle: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.green)),
                                hintText: 'Enter the Full Name',
                                hintStyle: TextStyle(
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                            SizedBox(height: 1),
                            TextField(
                              decoration: InputDecoration(
                                  labelText: 'USER ID',
                                  labelStyle: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey),
                                  // hintText: 'EMAIL',
                                  // hintStyle: ,
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.green)),
                                hintText: 'Enter the User ID',
                                hintStyle: TextStyle(
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                            SizedBox(height: 1),
                            TextField(
                              decoration: InputDecoration(
                                  labelText: 'PHONE',
                                  labelStyle: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey),
                                  // hintText: 'EMAIL',
                                  // hintStyle: ,
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.green)),
                                hintText: 'Enter the Phone',
                                hintStyle: TextStyle(
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                            SizedBox(height: 1),
                            TextField(
                              decoration: InputDecoration(
                                  labelText: 'PASSWORD ',
                                  labelStyle: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.green)),
                                hintText: 'Enter the Password',
                                hintStyle: TextStyle(
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                              obscureText: true,
                            ),
                            SizedBox(height: 1),
                            TextField(
                              decoration: InputDecoration(
                                  labelText: 'RE-ENTER PASSWORD ',
                                  labelStyle: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.green)),
                                hintText: 'Re-Enter the Password',
                                hintStyle: TextStyle(
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                              obscureText: true,
                            ),
                            SizedBox(height: 15.0),
                            Container(
                                height: 50.0,
                                color: Colors.transparent,
                                child: Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.green,
                                          style: BorderStyle.solid,
                                          width: 1.0),
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(25.0)),
                                  child: InkWell(
                                    onTap: () {
                                    },
                                    child:
                                    Center(
                                      child: Text('SIGNUP',
                                          style: TextStyle(
                                              fontSize: 20.0,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Montserrat')),
                                    ),
                                  ),
                                )
                            ),
                            SizedBox(height: 15.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'Already have an Account ?',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.italic,
                                      fontSize: 18,
                                      color: Colors.grey
                                  ),
                                ),
                                SizedBox(width: 5.0),
                                InkWell(
                                    onTap: (){
                                      Navigator.of(context).pop();
                                      Navigator.of(context).pop();
                                    },
                                    child: Text(
                                        'Login',
                                        style: TextStyle(
                                            color: Colors.green,
                                            fontSize: 18,
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.bold,
                                            decoration: TextDecoration.underline
                                        )
                                    )
                                )
                              ],
                            ),
                          ],
                        )
                    ),
                  ),

                ],
              )),
        ]));
  }
}