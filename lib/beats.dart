import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class Beats extends StatefulWidget{
  @override
  BeatsState createState() =>  BeatsState();
}
class BeatsState extends State<Beats>{
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  List<DropdownMenuItem<String>> listDrop1 = [];
  List<DropdownMenuItem<String>> listDrop2 = [];
  List<DropdownMenuItem<String>> listDrop3 = [];
  String selected1 = null, selected2 = null, selected3 = null;
  void loadState(){
    listDrop1 = [];
    listDrop1.add(DropdownMenuItem(
      child: Text('Andhra Pradesh'),
      value: '1',
    ));
    listDrop1.add(DropdownMenuItem(
      child: Text('Madhya Pradesh'),
      value: '2',
    ));
    listDrop1.add(DropdownMenuItem(
      child: Text('Telangana'),
      value: '3',
    ));
  }
  void loadDist(){
    listDrop2 = [];
    listDrop2.add(DropdownMenuItem(
      child: Text('A'),
      value: '1',
    ));
    listDrop2.add(DropdownMenuItem(
      child: Text('B'),
      value: '2',
    ));
    listDrop2.add(DropdownMenuItem(
      child: Text('C'),
      value: '3',
    ));
  }
  void loadReg(){
    listDrop3 = [];
    listDrop3.add(DropdownMenuItem(
      child: Text('X'),
      value: '1',
    ));
    listDrop3.add(DropdownMenuItem(
      child: Text('Y'),
      value: '2',
    ));
    listDrop3.add(DropdownMenuItem(
      child: Text('Z'),
      value: '3',
    ));
  }
  Widget build(BuildContext context){
    loadState();
    loadDist();
    loadReg();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Beats'),
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
                            width: 300,
                            color: Color(0xfff5f5f5),
                            child: DropdownButtonHideUnderline(
                                child: ButtonTheme(
                                  alignedDropdown: true,
                            child: DropdownButton(
                              value: selected1,
                              items: listDrop1,
                              hint: Text(' Select State'),
                              onChanged: (value){
                                selected1 = value;
                                setState(() {

                                });
                              },
                            ),
                                ),),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
                          child: Container(
                              width: 300,
                              color: Color(0xfff5f5f5),
                            child: DropdownButtonHideUnderline(
                                child: ButtonTheme(
                                  alignedDropdown: true,
                              child: DropdownButton(
                                value: selected2,
                                items: listDrop2,
                                hint: Text(' Select District'),
                                onChanged: (value){
                                  selected2 = value;
                                  setState(() {

                                  });
                                },
                              ),
                                ),),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
                          child: Container(
                            width: 300,
                              color: Color(0xfff5f5f5),
                            child: DropdownButtonHideUnderline(
                              child: ButtonTheme(
                                alignedDropdown: true,
                              child: DropdownButton(
                                value: selected3,
                                items: listDrop3,
                                hint: Text(' Select Region'),
                                onChanged: (value){
                                  selected3 = value;
                                  setState(() {

                                  });
                                },
                              ),
                          ),
                        ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
                          child: MaterialButton(
                            onPressed: _search,
                            child: Text('Search',
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
  void _search(){
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