import 'package:flutter/material.dart';
import 'package:senty/screens/homeScreen.dart';
import 'package:senty/screens/landingScreen.dart';
import 'package:senty/screens/introductionScreen/IntroductionScreen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: IntroductionLandingScreen(),
    );
  }
}

