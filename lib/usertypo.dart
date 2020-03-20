import 'package:flutter/material.dart';
class Usertypo extends StatefulWidget{
  _UsertypoState createState() => _UsertypoState();
}
class _UsertypoState extends State<Usertypo>{
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 50),
              Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Center(
                        child: Text(
                          'CHOR',
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 50.0,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.lineThrough,
                              decorationColor: Colors.black,
                              decorationThickness: 1.5,
                          ),
                        ),
                      ),
                      //SizedBox(width: 5.0),
                      Center(
                        child: Text(
                          'ITHA',
                          style: TextStyle(
                              fontSize: 50.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.green),
                        ),
                      ),
                    ],
                  ),
                SizedBox(height: 50,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Center(
                      child: Image.asset('images/Police.png',
                        height: 60,
                        width: 60,
                      ),
                    ),
                    SizedBox(width: 50),
                    Center(
                      child: Container(
                          height: 50.0,
                          color: Colors.transparent,
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.green,
                                    style: BorderStyle.solid,
                                    width: 1.0),
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(10.0)),
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context).pushNamed('/polsignup');
                              },
                              child:
                              Center(
                                child: Text('    Police    ',
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Montserrat')),
                              ),
                            ),
                          )
                      ),
                    ),
                  ],
                ),
          SizedBox(height: 50),
          Container(
            child: Stack(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Center(
                      child: Image.asset('images/Citizen.jpg',
                        height: 100,
                        width: 60,
                      ),
                    ),
                    SizedBox(width: 50),
                    Center(
                      child: Container(
                          height: 50.0,
                          color: Colors.transparent,
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.green,
                                    style: BorderStyle.solid,
                                    width: 1.0),
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(10.0)),
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context).pushNamed('/citsignup');
                              },
                              child:
                              Center(
                                child: Text('   Citizen    ',
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Montserrat')),
                              ),
                            ),
                          )
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 30.0),
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
                  },
                  child: Text(
                      'Login',
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 18,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.black54,
                          decorationThickness: 2,
                      )
                  )
              )
            ],
          ),
        ],
      ),
    );
  }
}