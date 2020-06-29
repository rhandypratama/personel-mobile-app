import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:personel/personel.dart';
import 'package:personel/utils/connectivy-helper.dart';
import 'package:personel/utils/widget-model.dart';


class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final Color color1 = Color(0xffFA696C);
  final Color color2 = Color(0xffFA8165);
  final Color color3 = Color(0xffFB8964);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConnectivyHelper(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _buildHeader(),
              SizedBox(height: 20.0),
              Container(
                height: 60,
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: OverflowBox(
                  maxWidth: 500,
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: <Widget>[
                      Text("Authentication", style: TextStyle(
                        color: Colors.black,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold
                      ),),
                      SizedBox(width: 30),
                      Text("Authentication", style: TextStyle(
                        color: Colors.grey.shade300,
                        fontSize: 50.0,
                        fontWeight: FontWeight.bold
                      ),),
                    ],
                  ),
                ),
              ),
              // SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 0.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Email",
                    prefixIcon: Material(
                      child: Icon(
                        Icons.email,
                        color: Colors.grey,
                      ),
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: 20),
                  ),
                  
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 0.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password",
                    prefixIcon: Material(
                      child: Icon(
                        Icons.lock,
                        color: Colors.grey,
                      ),
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: 20),
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  alignment: Alignment.centerRight,
                  child: Text("Forgot password ?")),
              SizedBox(height: 50.0),
              Align(
                alignment: Alignment.centerRight,
                child: RaisedButton(
                  padding: const EdgeInsets.fromLTRB(40.0, 16.0, 30.0, 16.0),
                  color: Colors.yellow,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      bottomLeft: Radius.circular(30.0)
                    )
                  ),
                  onPressed: () {
                    navigationManager(context, Personel(), isPushReplaced: false);
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        "Sign In".toUpperCase(),
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                      ),
                      SizedBox(width: 10.0),
                      Icon(
                        Icons.arrow_forward,
                        size: 24.0,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      
    );
  }

  Container _buildHeader() {
    return Container(
      height: 250,
      width: double.infinity,
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 0,
            left: -100,
            top: -150,
            child: Container(
              width: 340,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  // colors: [color1, color2]
                  colors: [Colors.yellow, Colors.amber]
                ),
                boxShadow: [
                  BoxShadow(
                    // color: color2,
                    color: Colors.amber,
                    offset: Offset(4.0,4.0),
                    blurRadius: 20.0
                  )
                ]
              ),
            ),
          ),
          // Container(
          //   width: 100,
          //   height: 100,
          //   decoration: BoxDecoration(
          //     shape: BoxShape.circle,
          //     gradient: LinearGradient(
          //       colors: [color3,color2]
          //     ),
          //     boxShadow: [
          //       BoxShadow(
          //         color: color3,
          //         offset: Offset(1.0,1.0),
          //         blurRadius: 4.0
          //       )
          //     ]
          //   ),
          // ),
          // Positioned(
          //   top: 100,
          //   right: 200,
          //   child: Container(
          //     width: 50,
          //     height: 50,
          //     decoration: BoxDecoration(
          //       shape: BoxShape.circle,
          //       gradient: LinearGradient(
          //         colors: [color3,color2]
          //       ),
          //       boxShadow: [
          //         BoxShadow(
          //           color: color3,
          //           offset: Offset(1.0,1.0),
          //           blurRadius: 4.0
          //         )
          //       ]
          //     ),
          //   ),
          // ),
          Container(
            margin: const EdgeInsets.only(
              top: 60,
              left: 30
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Personel", style: TextStyle(
                  color: Colors.black45,
                  fontSize: 34.0,
                  fontWeight: FontWeight.w700
                ),),
                SizedBox(height: 2.0),
                Text("Attendance System", style: TextStyle(
                  color: Colors.black45,
                  fontSize: 16.0
                ),)
              ],
            ),
          )
        ],
      ),
    );
  }
}