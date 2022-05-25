import 'package:flutter/material.dart';
import 'package:flutter_uts/profile.dart';
import 'package:flutter_uts/register.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
  }

  class MyApp extends StatefulWidget {
    const MyApp({ Key? key }) : super(key: key);
  
    @override
    State<MyApp> createState() => _MyAppState();
  }
  
  class _MyAppState extends State<MyApp> {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
         body: SingleChildScrollView(
           child: Center(
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 70, left : 20, right: 20),
                      child: Column(
                        children: <Widget>[
                          Text("Hello! \nLogin for See My Profile",
                          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 25, right: 25),
                  child: Row(
                    children: <Widget>[
                      Text("Email ", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, left: 25, right: 25),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Expanded(child: TextField(
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),
                              ),
                              filled: true,
                              hintText: "Input Email",
                              hintStyle: TextStyle(fontSize: 20, color: Colors.black45),
                            ),
                          ))
                        ],
                      )
                    ]),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 25, right: 25),
                  child: Row(
                    children: <Widget>[
                      Text("Password ", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15, left: 25, right: 25),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Expanded(child: TextField(
                            obscureText: true,
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),
                              ),
                              filled: true,
                              hintText: "Input Password",
                              hintStyle: TextStyle(fontSize: 20, color: Colors.black45),
                            ),
                          ),),
                        ],
                      ),
                    ]),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20, left: 25, right: 25),
                  child: SizedBox(width: double.infinity,
                  height: 50,
                  child: RaisedButton(onPressed: (){
                    Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => profile()),
                            );
                  },
                  child: Text("Login", style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),),
                  color: Colors.black,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),
                  ),),),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("You don't have an account?", 
                      style: TextStyle(fontSize: 18),),
                    ],
                  ),
                ),
                 Container(
                  margin: EdgeInsets.only(top: 5, left: 25, right: 25),
                  child: SizedBox(width: double.infinity,
                  height: 50,
                  child: RaisedButton(onPressed: (){
                     Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => register()),
                            );
                  },
                  child: Text("Make Account, Please!", style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),),
                  color: Colors.black,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),
                  ),),),
                ),
              ],
            ),),
         ), 
      );
    }
  }