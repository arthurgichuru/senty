
import 'package:flutter/material.dart';
import 'package:senty/screens/createProfileScreen/createProfileScreen.dart';
import 'package:senty/widgets/raisedbuttonWidget.dart';
import 'package:senty/widgets/titleDescriptionWidget.dart';
import 'package:pin_entry_text_field/pin_entry_text_field.dart';

import '../../widgets/flatButtonWidget.dart';


class OneTimePinScreen extends StatefulWidget {
  @override
  _OneTimePinScreenState createState() => _OneTimePinScreenState();
}

class _OneTimePinScreenState extends State<OneTimePinScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Security'),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TitleDescriptionWidget(
                titleDescription: 'Lets verify your phone number.',
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: PinEntryTextField(
                    showFieldAsBox: true,
                    onSubmit: (){

                    }, // end onSubmit
                  ), // end PinEntryTextField()
                ), // end Padding()
              ), // end Container()
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left:25.0, right: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  FlatButtonWidget(
                    buttonText: 'SEND AGAIN',
                    buttonOnpressed: (){},
                  ),
                  RaisedButtonWidget(
                    buttonText: 'VERIFY',
                    buttonOnpressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => CreateProfileScreen()));
                    },
                    buttonColor: Colors.blue,
                  )
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
