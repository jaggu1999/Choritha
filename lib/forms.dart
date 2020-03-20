import 'package:flutter/material.dart';
class Forms extends StatefulWidget{
  @override
  FormsState createState() =>  FormsState();
}
class FormsState extends State<Forms>{
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample Forms'),
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(30, 50, 30, 20),
                        child: MaterialButton(
                          onPressed: (){
                            Navigator.of(context).pushNamed('/form1');
                          },
                          child: Text('Processions',
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
                      Padding(
                        padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
                        child: MaterialButton(
                          onPressed: (){
                            Navigator.of(context).pushNamed('/form2');
                          },
                          child: Text('Film Shooting',
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
                      Padding(
                        padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
                        child: MaterialButton(
                          onPressed: (){
                            Navigator.of(context).pushNamed('/form3');
                          },
                          child: Text('Employee Verification',
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
        ],
      ),
            ),
    ),
    ],
      ),
    );
  }
}