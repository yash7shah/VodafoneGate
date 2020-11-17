import 'dart:async';

import 'package:flutter/material.dart';
import 'package:vodafone_gate/constants.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  Future startCountDown() async {
     var duration = new Duration(seconds: 3);
     return Timer(duration, (){
       Navigator.pushReplacementNamed(context, 'login_screen');
     });
  }


  @override
  Widget build(BuildContext context) {
    startCountDown();
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/splash_image.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 40.0,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('assets/images/logo_image.png'),
            ),
            Text(
              'VodafoneGate',
              style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.w700
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Secure your gated community',
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
            SizedBox(
              height: kScreenHeight(context) / 3,
            )
          ],
        ),
      ),
    );;
  }
}









