import 'package:flutter/material.dart';
import 'package:senty/screens/knowyourCustomerScreen/knowYourCustomerScreen.dart';
import 'package:senty/widgets/raisedbuttonWidget.dart';
import 'package:senty/widgets/textFieldWidget.dart';
import 'package:senty/widgets/titleDescriptionWidget.dart';

import 'customerProfileSuccessScreen.dart';



class CreatePassWordScreen extends StatefulWidget {
  @override
  _CreatePassWordScreenState createState() => _CreatePassWordScreenState();
}

class _CreatePassWordScreenState extends State<CreatePassWordScreen> {

  final _formKey = GlobalKey<FormState>();

  DateTime selectedDate = DateTime.now();
  final myController = TextEditingController();
  DateTime date1;


  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Profile'),
        ),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: ListView(
                children: <Widget>[
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TitleDescriptionWidget(titleDescription: 'Create your password.',),
                  ),
                  SizedBox(
                    height: 30,
                  ),


          Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFieldWidget(
                      labelText: 'Password',
                      // helperText: 'We will link this # to your account',
                      maxLength: 6,
                      validate: (value) {
                        if (value.isEmpty) {
                          return 'Password';
                        }
                        return null;
                      },
                      textInputType: TextInputType.visiblePassword,
                      textFeildIcons: Icon(Icons.lock_outline, color: Colors.blueAccent,),
                      passwordText: true,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFieldWidget(
                      labelText: 'Repeat Password',
                      // helperText: 'We will link this # to your account',
                      maxLength: 6,
                      validate: (value) {
                        if (value.isEmpty) {
                          return 'Password';
                        }
                        return null;
                      },
                      textInputType: TextInputType.visiblePassword,
                      textFeildIcons: Icon(Icons.lock_outline, color: Colors.blueAccent,),
                      passwordText: true,
                    ),
                  ),
                  SizedBox(height: 20),
                  /* Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Expanded(
                          flex:1,child: DropDownWidgetCountryCodes()),
                    ],
                  ),
                ),*/
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RaisedButtonWidget(
                      buttonOnpressed: () {
                        if( _formKey.currentState.validate()){Navigator.push(context, MaterialPageRoute(builder: (context) => KnowYourCustomerScreen()));
                        }
                      },
                      buttonText: 'CREATE PROFILE',
                      buttonColor: Colors.blue,
                    ),
                  ),
                ]
            ),
          ),
        ),
      ),
    );
  }
}
