import 'package:flutter/material.dart';
import 'package:vodafone_gate/login_screen.dart';
import 'constants.dart';
import 'splash_screen.dart';

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
        primaryColor: kPrimaryThemeColor,
        scaffoldBackgroundColor: kScaffoldBackgroundColor,
      ),
      initialRoute: 'splash_screen',
      routes: {
        'splash_screen' : (context) => SplashScreen(),
        'login_screen' : (context) => LoginScreen(),
      },
    );
  }
}
