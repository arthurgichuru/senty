import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:senty/screens/scanQRtoPayScreen/scanQRtoPay.dart';
import 'homeScreen.dart';
import 'imageScreen.dart';
import 'ncbaLoopScreen/ncbaLoop.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingScreen extends StatefulWidget {
  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {

  int _currentIndex = 0;
  final List<Widget> _children = [
    HomeScreen(),
    ScanQRToPayScreen(),
    LoopWidget()

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex], // new
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped, // new
        currentIndex: _currentIndex, // new
        items: [
          new BottomNavigationBarItem(
              icon: Container(child: Icon(Icons.home)),
              title: Text('Home')
          ),

          new BottomNavigationBarItem(
            icon: Container(
              height: 50,
                width: 50,
                child: Image.asset('images/scan.png', fit: BoxFit.contain, color: Colors.deepPurple,)),
            title: Text('Scan'),
          ),

          new BottomNavigationBarItem(
              icon: Container(child: Icon(Icons.account_balance, color: Colors.lightGreen,)),
              title: Text('Loop Banking')
          )
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
  Future <void> _launchLoop()async {
    const url = 'https://www.cbaloop.com';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}

