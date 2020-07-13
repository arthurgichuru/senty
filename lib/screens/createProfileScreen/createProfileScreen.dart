import 'package:flutter/material.dart';
import 'package:senty/screens/knowyourCustomerScreen/knowYourCustomerScreen.dart';
import 'package:senty/widgets/countryCodesDropDownWidget.dart';
import 'package:senty/widgets/raisedbuttonWidget.dart';
import 'package:senty/widgets/textFieldWidget.dart';
import 'package:senty/widgets/titleDescriptionWidget.dart';

import 'createpassWordScreen.dart';



class CreateProfileScreen extends StatefulWidget {
  @override
  _CreateProfileScreenState createState() =>
      _CreateProfileScreenState();
}

class _CreateProfileScreenState extends State<CreateProfileScreen> {

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
                  child: TitleDescriptionWidget(titleDescription: 'Create your profile.',),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFieldWidget(
                    labelText: 'First Name',
                    //helperText: 'Name as per ID',
                    maxLength: 30,
                    validate:(value){
                      if(value.isEmpty){
                        return 'Please Enter First Name';
                      }
                      return null;
                    },
                    textInputType: TextInputType.text,
                    textFeildIcons: Icon(Icons.person, color: Colors.blueAccent,),
                    //maxLength: 30,
                    passwordText: false,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFieldWidget(
                    labelText: 'Last Name',
                    //helperText: 'Name as per ID',
                    maxLength: 30,
                    validate:(value){
                      if(value.isEmpty){
                        return 'Please Enter Last Name';
                      }
                      return null;
                    },
                    textInputType: TextInputType.text,
                    textFeildIcons: Icon(Icons.person, color: Colors.blueAccent,),
                    //maxLength: 30,
                    passwordText: false,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFieldWidget(
                    labelText: 'Email',
                    //helperText: 'We will contact you with this id',
                    maxLength: 30,
                    validate: (value) {
                      if (value.isEmpty) {
                        return 'Please Enter Email';
                      }
                      return null;
                    },
                    textFeildIcons: Icon(Icons.email, color: Colors.blueAccent,),
                    textInputType: TextInputType.emailAddress,
                    //maxLength: 30,
                    passwordText: false,
                  ),
                ),
                SizedBox(height: 30),
                Card(
                  elevation: 5,
                  child: ListTile(
                    leading: Icon(Icons.face, color: Colors.blueAccent,),
                    title: Text('Take your profile photo'),
                    trailing: IconButton(icon: Icon(Icons.arrow_forward), onPressed: null),
                  ),
                ),
                Divider(),
                SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButtonWidget(
                    buttonOnpressed: () {
                      if( _formKey.currentState.validate()){Navigator.push(context, MaterialPageRoute(builder: (context) => CreatePassWordScreen()));
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
