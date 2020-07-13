
import 'package:flutter/material.dart';
import 'package:senty/screens/loginScreen/loginScreen.dart';
import 'package:senty/widgets/raisedbuttonWidget.dart';


class CustomerProfileSuccessScreen extends StatefulWidget {
  @override
  _CustomerProfileSuccessScreenState createState() => _CustomerProfileSuccessScreenState();
}

class _CustomerProfileSuccessScreenState extends State<CustomerProfileSuccessScreen> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Success Screen',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          child: ListView(
            children: <Widget>[
              SizedBox(height: 100,),
              Center(
                child: Container(
                    height: 200,
                    width: 200,
                    child: Image.asset('images/success.png')
                ),
              ),
              SizedBox(height: 30,),
              Container(
                  child: Text(
                    'Hooray! Your account has been been \ncreated. \nWelcome to Senty !',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18),)
              ),
              SizedBox(height: 100,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 70,
                  child: Card(
                    elevation: 10,
                    color: Colors.black,
                    child: Container(
                        height: 50,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Icon(Icons.star, color: Colors.white,),
                              Text(
                                'You’ve just earned 1 Loop tree for \nopening an account with us.',
                                textAlign: TextAlign.start,
                                style: TextStyle(color: Colors.white),),
                            ],
                          ),
                        )
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: RaisedButtonWidget(
                  buttonColor: Colors.blueAccent,
                  buttonOnpressed: () {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => LoginScreen()));
                  },
                  buttonText: 'FINISH',
                  //buttonColor: Colors.blueAccent,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
