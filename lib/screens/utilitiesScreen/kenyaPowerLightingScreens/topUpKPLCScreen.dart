import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:senty/screens/utilitiesScreen/kenyaPowerLightingScreens/topupKPLCSuccessScreen.dart';

class TopUpKPLCScreen extends StatefulWidget {
  @override
  _TopUpKPLCScreenState createState() => _TopUpKPLCScreenState();
}

class _TopUpKPLCScreenState extends State<TopUpKPLCScreen> {
  int _radioValue1 = -1;
  int _radioValue2 = -1;
  int _radioValue3 = -1;

  var controller = new MoneyMaskedTextController(
      decimalSeparator: '.', thousandSeparator: ',');

  @override
  Widget build(BuildContext context) {
    return Material(
      child: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 200.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text("Electricity", style: TextStyle(color: Colors.white, fontSize: 16.0,)),
                  background: Image.asset(
                    'images/electricitysliver.jpg',
                    fit: BoxFit.cover,
                  )),
            ),
          ];
        },
        body: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.format_list_numbered,
                          color: Colors.blue,
                        ),
                        labelText: 'KPLC Account Number'),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: TextField(
                    controller: controller,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.monetization_on,
                          color: Colors.blue,
                        ),
                        labelText: 'Amount'),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: RaisedButton(
                  color: Colors.blue,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TopUpKPLCSuccessScreen()));
                  },
                  child: Container(
                      width: double.infinity,
                      child: Text(
                        'PAY',
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      )),
                ),
              ),
            ),
            SizedBox(height: 10,),
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
