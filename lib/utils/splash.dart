import 'dart:async';

import 'package:flutter/material.dart';
import 'package:personel/dashboard/dashboard-screen.dart';
import 'package:personel/personel.dart';
import 'package:personel/utils/widget-model.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer timer;

  _SplashScreenState() {
    timer = new Timer(const Duration(seconds: 3), () async {
      navigationManager(context, Personel(), isPushReplaced: true);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width / 3.5,
              // decoration: BoxDecoration(
              //   borderRadius: BorderRadius.circular(100.0),
              //   border: Border.all(
              //     color: Colors.black12,
              //     style: BorderStyle.solid,
              //     width: 6.0,
              //   ),
              //   // image: DecorationImage(
              //   //   image: AssetImage("assets/images/logo/logo.png"),
              //   //   fit: BoxFit.cover,
              //   // ),
              // ),
              padding: EdgeInsets.all(0),
              child: Image.asset('assets/images/clock.png'),
            ),
            Container(
              padding: EdgeInsets.all(4),
              width: MediaQuery.of(context).size.width,
              child: dynamicText("Personel", 
                color: Colors.black38, 
                textAlign: TextAlign.center, 
                fontSize: 26
              )
            ),
          ],
        ),
      ),
    );
  }
}
