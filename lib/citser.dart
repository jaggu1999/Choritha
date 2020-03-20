import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:firebase_auth/firebase_auth.dart';
class Citser extends StatefulWidget{
  CitserState createState() => CitserState();
}
class CitserState extends State<Citser> {
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () => Future.value(false),
    child: Scaffold(
      appBar: AppBar(
        title: const Text('Services'),
        backgroundColor: Colors.green,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            Container(
              child: UserAccountsDrawerHeader(accountName: Text('Jagadeesh Ch'), accountEmail: Text('jagadeeshch1999@gmail.com'),
                  decoration: BoxDecoration(
                    color: Colors.green
                  ),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage('https://cdn.business2community.com/wp-content/uploads/2017/08/blank-profile-picture-973460_640.png'),
                  )
              ),
              color: Colors.orangeAccent,
            ),
            Container(
              child: ListTile(
                leading: new Icon(Icons.info),
                title: Text('Appointments'),
                onTap: (){
                  Navigator.of(context).pushNamed('/statusappoint');
                }
              ),
            ),
            Container(
              child: ListTile(
                leading: new Icon(Icons.info),
                title: Text('Log Out'),
                onTap: _signOut,
              ),
            ),
          ],
        ),
      ),
      resizeToAvoidBottomPadding: false,
      body:
          Stack(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(top: 0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white70,
                ),
                child: Padding(
                  padding: EdgeInsets.all(0),
                  child: ListView(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(height: 30),
                              Container(
                                child: Stack(
                                  children: <Widget>[
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Container(
                                          padding: EdgeInsets.only(left: 50.0),
                                          child: Image.asset('images/forms.png',
                                            height: 60,
                                            width: 60,
                                          ),
                                        ),
                                        SizedBox(height: 30,),
                                        Container(
                                          padding: EdgeInsets.only(left: 50.0),
                                          child: Image.asset('images/noc.png',
                                            height: 60,
                                            width: 60,
                                          ),
                                        ),
                                        SizedBox(height: 30,),
                                        Container(
                                          padding: EdgeInsets.only(left: 50.0),
                                          child: Image.asset('images/beat.jpg',
                                            height: 60,
                                            width: 60,
                                          ),
                                        ),
                                        SizedBox(height: 30,),
                                        Container(
                                          padding: EdgeInsets.only(left: 50.0),
                                          child: Image.asset('images/Appointment.jpg',
                                            height: 60,
                                            width: 60,
                                          ),
                                        ),
                                        SizedBox(height: 30,),
                                        Container(
                                          padding: EdgeInsets.only(left: 50.0),
                                          child: Image.asset('images/petition.png',
                                            height: 60,
                                            width: 60,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          //SizedBox(width: 50,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(height: 35),
                              Container(
                                child: Stack(
                                  children: <Widget>[
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Container(
                                            padding: EdgeInsets.only(left: 30, right: 50),
                                            height: 50.0,
                                            color: Colors.transparent,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Colors.green,
                                                      style: BorderStyle.solid,
                                                      width: 1.0),
                                                  color: Colors.orangeAccent,
                                                  borderRadius: BorderRadius.circular(10.0)),
                                              child: InkWell(
                                                onTap: () {
                                                  Navigator.of(context).pushNamed('/forms');
                                                },
                                                child:
                                                Center(
                                                  child: Text('    Sample Forms    ',
                                                      style: TextStyle(
                                                          fontSize: 20.0,
                                                          color: Colors.white,
                                                          fontWeight: FontWeight.bold,
                                                          fontFamily: 'Montserrat')),
                                                ),
                                              ),
                                            )
                                        ),
                                        SizedBox(height: 35,),
                                        Container(
                                            padding: EdgeInsets.only(left: 30, right: 50),
                                            height: 50.0,
                                            color: Colors.transparent,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Colors.green,
                                                      style: BorderStyle.solid,
                                                      width: 1.0),
                                                  color: Colors.orangeAccent,
                                                  borderRadius: BorderRadius.circular(10.0)),
                                              child: InkWell(
                                                onTap: _launchURL,
                                                child:
                                                Center(
                                                  child: Text('  Request for NOC  ',
                                                      style: TextStyle(
                                                          fontSize: 20.0,
                                                          color: Colors.white,
                                                          fontWeight: FontWeight.bold,
                                                          fontFamily: 'Montserrat')),
                                                ),
                                              ),
                                            )
                                        ),
                                        SizedBox(height: 45,),
                                        Container(
                                            padding: EdgeInsets.only(left: 30, right: 50),
                                            height: 50.0,
                                            color: Colors.transparent,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Colors.green,
                                                      style: BorderStyle.solid,
                                                      width: 1.0),
                                                  color: Colors.orangeAccent,
                                                  borderRadius: BorderRadius.circular(10.0)),
                                              child: InkWell(
                                                onTap: () {
                                                  Navigator.of(context).pushNamed('/beats');
                                                },
                                                child:
                                                Center(
                                                  child: Text('           Beats            ',
                                                      style: TextStyle(
                                                          fontSize: 20.0,
                                                          color: Colors.white,
                                                          fontWeight: FontWeight.bold,
                                                          fontFamily: 'Montserrat')),
                                                ),
                                              ),
                                            )
                                        ),
                                        SizedBox(height: 40,),
                                        Container(
                                            padding: EdgeInsets.only(left: 30, right: 50),
                                            height: 50.0,
                                            color: Colors.transparent,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Colors.green,
                                                      style: BorderStyle.solid,
                                                      width: 1.0),
                                                  color: Colors.orangeAccent,
                                                  borderRadius: BorderRadius.circular(10.0)),
                                              child: InkWell(
                                                onTap: () {
                                                  Navigator.of(context).pushNamed('/appoint');
                                                },
                                                child:
                                                Center(
                                                  child: Text('    Appointments    ',
                                                      style: TextStyle(
                                                          fontSize: 20.0,
                                                          color: Colors.white,
                                                          fontWeight: FontWeight.bold,
                                                          fontFamily: 'Montserrat')),
                                                ),
                                              ),
                                            )
                                        ),
                                        SizedBox(height: 40,),
                                        Container(
                                            padding: EdgeInsets.only(left: 30, right: 50),
                                            height: 50.0,
                                            color: Colors.transparent,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Colors.green,
                                                      style: BorderStyle.solid,
                                                      width: 1.0),
                                                  color: Colors.orangeAccent,
                                                  borderRadius: BorderRadius.circular(10.0)),
                                              child: InkWell(
                                                onTap: () {
                                                  Navigator.of(context).pushNamed('/petstatus');
                                                },
                                                child:
                                                Center(
                                                  child: Text('   Petition Status   ',
                                                      style: TextStyle(
                                                          fontSize: 20.0,
                                                          color: Colors.white,
                                                          fontWeight: FontWeight.bold,
                                                          fontFamily: 'Montserrat')),
                                                ),
                                              ),
                                            )
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                          ],
          ),
                ),
    ),
    ],
          ),
    ),
    );
  }
  _launchURL() async {
    const url = "https://onlineap.meeseva.gov.in/CitizenPortal/UserInterface/Citizen/DeptServices.aspx??enc=hliVrtHsDCPMLtVGm264Ig==";
    if (await canLaunch(url)) {
      await launch(url, forceWebView: false);
    } else {
      throw 'Could not launch $url';
    }
  }
  /*Future<String> _getInfo() async{
    final FirebaseAuth _firebaseauth = FirebaseAuth.instance;
    final FirebaseUser user = await _firebaseauth.currentUser();
    final uid= await user.uid;
    return uid;
  }*/
  void _signOut() async {
    final FirebaseAuth _firebaseauth = FirebaseAuth.instance;
    try{
        await _firebaseauth.signOut();
        Navigator.of(context).pushNamed('/login');
    }
    catch(e) {
      print(e);
    }
  }
}