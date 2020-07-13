
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/services.dart';
import 'package:senty/screens/scanQRtoPayScreen/scanQrtoPaySuccessScreen.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import '../landingScreen.dart';

class ScanQRToPayScreen extends StatefulWidget {

  var controller = new MoneyMaskedTextController();

  final String value;

  ScanQRToPayScreen({Key key, this.value}):super(key:key);

  @override
  _ScanQRToPayScreenState createState() => _ScanQRToPayScreenState();
}

class _ScanQRToPayScreenState extends State<ScanQRToPayScreen> {

  int _radioValue1 = -1;
  int _radioValue2 = -1;
  int _radioValue3 = -1;

  String barcode = "";


  @override
  initState() {
    super.initState();
    scanQr();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ScantoCollect',
      home: Scaffold(
        body: Container(
          child: ListView(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: IconButton(icon: Icon(Icons.clear, color: Colors.black,), onPressed: (){
                      Navigator.pop(
                          context,
                          MaterialPageRoute(builder: (context) => LandingScreen()));
                    }),
                  ),
                ],
              ),
              SizedBox(height: 10),

              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Center(
                        child: Text('KES ', style: TextStyle(fontSize: 30),)
                    ),
                    Expanded(
                      child: Center(
                          child: Text('${barcode.toString()}', style: TextStyle(fontSize: 50),)
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  child: RaisedButton(
                    color: Colors.blueAccent,
                    onPressed: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>ScanQRtoPaySuccessScreen()));
                      //_showDialog();
                      //clearFeilds();
                    },
                    child:Text( 'PAY', style: TextStyle(color: Colors.white, fontSize: 16),),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        child: Column(children: <Widget>[
                          ExpansionTile(
                            title: Text("Choose another payment method"),
                            trailing: Icon(Icons.arrow_downward),
                            backgroundColor: Colors.white10,
                            children: [
                              Column(
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: <Widget>[
                                          Expanded(
                                            child: Container(
                                              height:100,
                                              width: 70,
                                              child: Image.asset('images/mpesa.jpg'),
                                            ),
                                            flex: 1,
                                          ),
                                          Expanded(
                                            child: Radio(
                                              value: 0,
                                              groupValue: _radioValue1,
                                              onChanged: _handlePostPaid,
                                            ),
                                            flex: 1,
                                          ),
                                          Expanded(
                                            child: Container(
                                              height:50,
                                              width: 100,
                                              child: Image.asset('images/mastercard.jpg'),
                                            ),
                                            flex: 1,
                                          ),
                                          Expanded(
                                            child: Radio(
                                              value: 0,
                                              groupValue: _radioValue2,
                                              onChanged: _handlePostPaid2,
                                            ),
                                            flex: 1,
                                          ),
                                          Expanded(
                                            child: Container(
                                              height:100,
                                              width: 70,
                                              child: Image.asset('images/visalogo.png'),
                                            ),
                                            flex: 1,
                                          ),
                                          Expanded(
                                            child: Radio(
                                              value: 0,
                                              groupValue: _radioValue3,
                                              onChanged: _handlePostPaid3,
                                            ),
                                            flex: 1,
                                          ),
                                        ],
                                      )
                                  ),
                                ],
                              )
                            ],
                          ),
                        ])),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


  Future scanQr() async {
    try {
      String barcode = await BarcodeScanner.scan();
      setState(() => this.barcode = barcode);
    } on PlatformException catch (e) {
      if (e.code == BarcodeScanner.CameraAccessDenied) {
        setState(() {
          this.barcode = 'The user did not grant the camera permission!';
        });
      } else {
        setState(() => this.barcode = 'Unknown error: $e');
      }
    } on FormatException {
      setState(() => this.barcode =
      'You have not scanned!');
    } catch (e) {
      setState(() => this.barcode = 'Unknown error: $e');
    }
  }

  void _showDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("QR details"),
          content: new Text('$barcode'),
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

  void _handlePostPaid(int value) {
    setState(() {
      _radioValue1 = value;
    });
  }

  void _handlePostPaid2(int value) {
    setState(() {
      //_radioValue2 = value;
    });
  }

  void _handlePostPaid3(int value) {
    setState(() {
      //_radioValue3 = value;
    });
  }
}



