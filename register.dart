import 'package:flutter/material.dart';
import 'package:flutter_uts/profile.dart';

class register extends StatefulWidget {
  const register({ Key? key }) : super(key: key);

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 70, left : 20, right: 20),
                      child: Column(
                        children: <Widget>[
                          Text("Create Your Account, Please!",
                          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
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
                      Text("Username", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),)
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
                              hintText: "Write Your Name",
                              hintStyle: TextStyle(fontSize: 20, color: Colors.black45),
                            ),
                          ))
                        ],
                      )
                    ]),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25, left: 25, right: 25),
                  child: Row(
                    children: <Widget>[
                      Text("Email", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),)
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
                              hintText: "Write Your Email",
                              hintStyle: TextStyle(fontSize: 20, color: Colors.black45),
                            ),
                          ),),
                        ],
                      ),
                    ]),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25, left: 25, right: 25),
                  child: Row(
                    children: <Widget>[
                      Text("Password", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),)
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
                            obscureText: true,
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),
                              ),
                              filled: true,
                              hintText: "Write Your Password",
                              hintStyle: TextStyle(fontSize: 20, color: Colors.black45),
                            ),
                          ),),
                        ],
                      ),
                    ]),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30, left: 25, right: 25),
                  child: SizedBox(width: double.infinity,
                  height: 50,
                  child: RaisedButton(onPressed: (){
                    Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => profile()),
                            );
                  },
                  child: Text("Create account!", style: TextStyle(
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