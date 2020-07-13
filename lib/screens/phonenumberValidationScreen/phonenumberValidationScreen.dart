import 'package:flutter/material.dart';
import 'package:senty/widgets/raisedbuttonWidget.dart';
import 'package:senty/widgets/textFieldWidget.dart';
import 'package:senty/widgets/titleDescriptionWidget.dart';
import 'package:pin_entry_text_field/pin_entry_text_field.dart';

import 'onetimePassWordWidget.dart';

class PhoneNumberValidationScreen extends StatefulWidget {
  @override
  _PhoneNumberValidationScreenState createState() => _PhoneNumberValidationScreenState();
}

class _PhoneNumberValidationScreenState extends State<PhoneNumberValidationScreen> {
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
          title: Text('Phone number'),
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
                    child: TitleDescriptionWidget(
                      titleDescription: 'Enter Phone Number.',),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFieldWidget(
                      labelText: 'Phone number',
                      // helperText: 'We will link this # to your account',
                      maxLength: 10,
                      validate: (value) {
                        if (value.isEmpty) {
                          return 'Please Enter Phone #';
                        }
                        return null;
                      },
                      textInputType: TextInputType.phone,
                      textFeildIcons: Icon(Icons.phone, color: Colors.blueAccent,),
                      //maxLength: 10,
                      passwordText: false,
                    ),
                  ),
                  SizedBox(height: 50),
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
                        if (_formKey.currentState.validate()) {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => OneTimePinScreen()));
                        }
                      },
                      buttonText: 'NEXT',
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