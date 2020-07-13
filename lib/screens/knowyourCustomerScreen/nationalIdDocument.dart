import 'package:flutter/material.dart';
import 'package:senty/screens/createProfileScreen/customerProfileSuccessScreen.dart';
import 'package:senty/widgets/datetimeWidget.dart';


class NationalIdDocument extends StatefulWidget {
  @override
  _NationalIdDocumentState createState() => _NationalIdDocumentState();
}

class _NationalIdDocumentState extends State<NationalIdDocument> {
  bool _lights = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Identity'),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            SizedBox(height: 50,),
            Divider(),
            Row(
              children: <Widget>[
                Expanded(child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('ID Number', style: TextStyle(color: Colors.black,fontSize: 16),),
                  ),
                )),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          contentPadding:
                          EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                          labelText: 'ID No'
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Divider(),
            Row(
              children: <Widget>[
                Expanded(child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('First Name',style: TextStyle(color: Colors.black,fontSize: 16)),
                  ),
                )),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          contentPadding:
                          EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                          labelText: 'First Name on ID'
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Divider(),
            Row(
              children: <Widget>[
                Expanded(child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Last Name',style: TextStyle(color: Colors.black,fontSize: 16)),
                  ),
                )),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          contentPadding:
                          EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                          labelText: 'First Name on ID',
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Divider(),
            Row(
              children: <Widget>[
                Expanded(child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Date of Birth ID',style: TextStyle(color: Colors.black,fontSize: 16)),
                  ),
                )),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DateTimeWidget(),
                  ),
                ),
              ],
            ),
            Divider(),
            Row(
              children: <Widget>[
                Expanded(child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('ID Image',style: TextStyle(color: Colors.black,fontSize: 16)),
                  ),
                )),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:TextField(
                      onTap: (){

                      },
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.arrow_forward),
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          contentPadding:
                          EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                          hintText: 'Capture Image'
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                child: SwitchListTile(
                  title: const Text('Accept Terms and Conditions'),
                  value: _lights,
                  onChanged: (bool value) { setState(() { _lights = value; }); },
                  //secondary: const Icon(Icons.lightbulb_outline),
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: RaisedButton(
                  color: Colors.blue,
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>CustomerProfileSuccessScreen()));
                  },
                  child: Container(
                      width: double.infinity,
                      child: Text('FINISH',style: TextStyle(color: Colors.white),textAlign: TextAlign.center,)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
