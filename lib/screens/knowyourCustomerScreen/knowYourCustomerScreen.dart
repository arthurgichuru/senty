import 'package:flutter/material.dart';
import 'package:senty/widgets/raisedbuttonWidget.dart';
import 'package:senty/widgets/textFieldWidget.dart';
import 'package:senty/widgets/titleDescriptionWidget.dart';

import 'nationalIdDocument.dart';



class KnowYourCustomerScreen extends StatefulWidget {
  @override
  _KnowYourCustomerScreenState createState() => _KnowYourCustomerScreenState();
}

class _KnowYourCustomerScreenState extends State<KnowYourCustomerScreen> {

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
          title: Text('KYC'),
          actions: <Widget>[
          ],
        ),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: ListView(
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                  /*  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Expanded(
                          child: Divider(
                            color: Colors.lightBlue,
                            thickness: 5,
                          ),
                        ),
                        SizedBox(width: 5,),
                        Expanded(
                          child: Divider(
                            color: Colors.lightBlue,
                            thickness: 5,
                          ),
                        ),
                        SizedBox(width: 5,),
                        Expanded(
                          child: Divider(
                            color: Colors.blueAccent,
                            thickness: 5,
                          ),
                        ),
                        SizedBox(width: 5,),
                        Expanded(
                          child: Divider(
                            color: Colors.lightBlue,
                            thickness: 5,
                          ),
                        ),
                        SizedBox(width: 5,),
                        Expanded(
                          child: Divider(
                            color: Colors.lightBlue,
                            thickness: 5,
                          ),
                        ),
                      ],
                    ),*/
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TitleDescriptionWidget(titleDescription: 'Provide your details to verify your identity.',),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Divider(),
                  ListTile(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>NationalIdDocument()));
                    },
                    leading: Icon(Icons.perm_identity),
                    title: Text('National ID'),
                    trailing: IconButton(icon: (Icon(Icons.arrow_forward)), onPressed: null),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.perm_identity),
                    title: Text('Alien National ID'),
                    trailing: IconButton(icon: (Icon(Icons.arrow_forward)), onPressed: null),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.perm_identity),
                    title: Text('Kenya Passport'),
                    trailing: IconButton(icon: (Icon(Icons.arrow_forward)), onPressed: null),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.perm_identity),
                    title: Text('Other Passport'),
                    trailing: IconButton(icon: (Icon(Icons.arrow_forward)), onPressed: null),
                  ),
                  Divider(),
                ]
            ),
          ),
        ),
      ),
    );
  }
}
