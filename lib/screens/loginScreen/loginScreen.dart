
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:senty/screens/phonenumberValidationScreen/phonenumberValidationScreen.dart';
import '../../widgets/textFieldWidget.dart';
import '../landingScreen.dart';


class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController passwordTextController;
  TextEditingController phoneNumberTextController;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => _exitApp(context),
      child: MaterialApp(
        title: 'LandingPage',
        debugShowCheckedModeBanner: false,
        home: Form(
          key: _formKey,
          child: Scaffold(
            backgroundColor: Colors.white,
            body: Container(
              child: ListView(
                children: <Widget>[
                  Container(
                    child: IconButton(icon: (Icon(Icons.clear,color: Colors.black,)), onPressed: (){
                      Navigator.pop(context, MaterialPageRoute(builder: (context) => LandingScreen()));
                    },
                      alignment: Alignment.centerLeft,),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Center(
                      child: Text(
                        'Welcome to Loop',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding:
                    const EdgeInsets.only(top: 15.0, left: 8, right: 8),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: TextFieldWidget(
                            controller: phoneNumberTextController,
                            validate: (value) {
                              if (value.isEmpty) {
                                return 'Enter Phone #';
                              }
                              return null;
                            },
                            textInputType: TextInputType.phone,
                            textFeildIcons: Icon(Icons.phone, color: Colors.blueAccent,),
                            //labelText: 'Enter Phone number',
                            hintText: 'Enter Phone #',
                            passwordText: false,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: TextFieldWidget(
                            controller: passwordTextController,
                            validate: (value) {
                              if (value.isEmpty) {
                                return 'Enter Pin';
                              }
                              return null;
                            },
                            textInputType: TextInputType.number,
                            textFeildIcons: Icon(Icons.lock_outline, color: Colors.blueAccent,),
                            hintText: 'Enter Pin',
                            // labelText: 'Enter Password',
                            passwordText: true,
                            maxLength: 4,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 50,),
                  Padding(
                    padding:
                    const EdgeInsets.only(top: 15.0, left: 25, right: 25),
                    child: Column(
                      children: <Widget>[
                        ButtonTheme(
                          minWidth: 400,
                          height: 50,
                          child: RaisedButton.icon(
                            elevation: 10,
                            color: Colors.blueAccent,
                            icon: Icon(
                              Icons.lock,
                              color: Colors.white,
                              size: 30,
                            ),
                            label: Text(
                              'Proceed Securely',
                              style:
                              TextStyle(color: Colors.white, fontSize: 18),
                            ),
                            onPressed: () {
                              //passwordTextController.clear();
                              //phoneNumberTextController.clear();
                              if (_formKey.currentState.validate()) {
                               Navigator.push(context, MaterialPageRoute(builder: (context) => LandingScreen()));
                              }
                            },
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      /*  Text(
                            'By proceeding, you agree with our Terms and Conditions & Privacy policy. Standard operator charges may apply for SMS.',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.black45, fontSize: 12))*/
                      ],
                    ),
                  ),
                  SizedBox(height: 70,),
                  Divider(),
                  Container(
                    height: 200,
                    child: ListView(
                      children: <Widget>[
                        ListTile(
                            title: Text('Create Profile'),
                            trailing: IconButton(
                              icon: Icon(Icons.chevron_right),
                              onPressed: () {
                               Navigator.push(context, MaterialPageRoute(builder: (context) => PhoneNumberValidationScreen()));
                              },
                            )
                        ),
                        Divider(),
                        ListTile(
                            title: Text('Having Log in issues?'),
                            trailing: IconButton(
                              icon: Icon(Icons.chevron_right),
                              onPressed: () {},
                            )
                        ),
                        Divider(),
                        ListTile(
                            title: Text('FAQs'),
                            trailing: IconButton(
                              icon: Icon(Icons.chevron_right),
                              onPressed: () {},
                            )
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<bool> _exitApp(BuildContext context) {
    return showDialog(
      context: context,
      child: new AlertDialog(
        title: new Text('Do you want to exit this Loop Pay?'),
        content: new Text('We hate to see you leave...'),
        actions: <Widget>[
          new FlatButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: new Text('No'),
          ),
          new FlatButton(
            onPressed: () => SystemNavigator.pop(),
            child: new Text('Yes'),
          ),
        ],
      ),
    ) ??
        false;
  }

  void _showDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("Reset password"),
          content: new Text("Functionality Comming Soon"),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("Close"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
