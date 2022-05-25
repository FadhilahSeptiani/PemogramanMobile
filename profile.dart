import 'package:flutter/material.dart';
import 'package:flutter_uts/main.dart';

class profile extends StatefulWidget {
  const profile({ Key? key }) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 80, left: 15, right: 15),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 80,
                        backgroundImage: AssetImage("assets/images/dhila.jpeg"),
                      ),
                      Text(" Hello, \n This is my profile", 
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 260, left: 25, right: 25),
              child: Column(
                children: <Widget>[
                    Text("Nama : Fadhilah Nia Septiani \nNIM    : 20190801367 \nEmail  : fadhilahseptiani@gmail.com \n\nDikerjakan dan alhamdulillah selesai, untuk memenuhi nilai UTS mata kuliah Pemograman Mobile.",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                ],
              ),
            ),
          ]),
      ),
    );
  }
}