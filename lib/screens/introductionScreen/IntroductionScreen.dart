import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:senty/screens/loginScreen/loginScreen.dart';

import '../landingScreen.dart';

class IntroductionLandingScreen extends StatefulWidget {
  @override
  _IntroductionLandingScreenState createState() => _IntroductionLandingScreenState();
}

class _IntroductionLandingScreenState extends State<IntroductionLandingScreen> {

  List<PageViewModel>getPages(){
    return[
      PageViewModel(
        decoration: const PageDecoration(
          pageColor: Colors.blueAccent,
            titleTextStyle: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
            bodyTextStyle: TextStyle(color: Colors.white)
        ),
        image: Center(
            child: Text('LOOP PAY', style: TextStyle(fontSize: 30, color: Colors.white),)),
            title: 'The best way to pay!',
            body: 'LOOP PAY is the easy way to make payments from all your accounts. Loop Pay has all your favourite merchants and makes paying to them very CHEAP for you.',
        //footer: Text('Your business partner', style: TextStyle(color:Colors.black),)
      ),
      PageViewModel(
        decoration: const PageDecoration(
            pageColor: Colors.blueAccent,
            titleTextStyle: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
            bodyTextStyle: TextStyle(color: Colors.white)
        ),
        image: Center(child: Text('LOOP PAY', style: TextStyle(fontSize: 30, color: Colors.white),)),
        title: 'We bring you deals and discounts!',
        body: 'LOOP PAY has partnered with your favourite merchants to bring you offers and discounts. Pay with Loop Pay and enjoy these offers.',
        //footer: Text('Your business partner', style: TextStyle(color:Colors.black),)
      ),
      PageViewModel(
        decoration: const PageDecoration(
            pageColor: Colors.blueAccent,
            titleTextStyle: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
            bodyTextStyle: TextStyle(color: Colors.white)
        ),
        image: Center(child: Text('LOOP PAY', style: TextStyle(fontSize: 30, color: Colors.white),)),
        title: 'Pay straight from your bank account or M-PESA.',
        body: 'LOOP PAY allows you to link your bank account or M-PESA wallet so that you can make payments from single control pannel.Say goodbye to carrying many cards and keeping track of all those passwords.',
        //footer: Text('Your business partner', style: TextStyle(color:Colors.black),)
      ),
      PageViewModel(
        decoration: const PageDecoration(
            pageColor: Colors.blueAccent,
            titleTextStyle: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
            bodyTextStyle: TextStyle(color: Colors.white)
        ),
        image: Center(child: Text('LOOP PAY', style: TextStyle(fontSize: 30, color: Colors.white),)),
        title: 'Don\'t have cash to pay urgent bills? ',
        body: 'LOOP PAY will give you an overdraft on your wallet so that you can pay for these urgent bills. We trust you will pay Loop Pay back in a couple of days.',
        //footer: Text('Your business partner', style: TextStyle(color:Colors.black),)
      ),
    ];
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        globalBackgroundColor: Colors.blueAccent,
        pages: getPages(

        ),
        showSkipButton: true,
        skip: const Text("SKIP",style: TextStyle(fontSize: 18,color: Colors.white)),
        done: Text('DONE',style: TextStyle(fontSize: 18, color: Colors.white),
        ),
        onDone: (){
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginScreen()));
        },
        dotsDecorator: DotsDecorator(
          size: const Size.square(10.0),
          activeSize: const Size(20.0, 10.0),
          color: Colors.white,
          activeColor: Colors.red,
          spacing: const EdgeInsets.symmetric(horizontal: 3.0),
          activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0)
          ),
        ),
      ),
    );
  }

}