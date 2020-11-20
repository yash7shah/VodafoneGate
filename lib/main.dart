import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'constants.dart';
import 'splash_screen.dart';
import 'otp_screen.dart';
import 'sign_up_screen.dart';
import 'create_password_screen.dart';
import 'home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.light().copyWith(
        primaryColor: Colors.lightBlueAccent,
        scaffoldBackgroundColor: kScaffoldBackgroundColor,
      ),
      initialRoute: SplashScreen.id,
      routes: {
        SplashScreen.id : (context) => SplashScreen(),
        LoginScreen.id : (context) => LoginScreen(),
        SignUpScreen.id : (context) => SignUpScreen(),
        OTPScreen.id : (context) => OTPScreen(),
        CreatePasswordScreen.id : (context)=> CreatePasswordScreen(),
        HomeScreen.id : (context)=> HomeScreen(),
      },


    );
  }
}
