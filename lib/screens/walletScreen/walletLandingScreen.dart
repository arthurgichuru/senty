import 'package:flutter/material.dart';
import 'package:senty/screens/knowyourCustomerScreen/knowYourCustomerScreen.dart';


class WalletLandingScreen extends StatefulWidget {
  @override
  _WalletLandingScreenState createState() => _WalletLandingScreenState();
}

class _WalletLandingScreenState extends State<WalletLandingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //backgroundColor: Colors.white,
          title: Text(
            'Wallet',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Container(
            child: ListView(children: <Widget>[
          SizedBox(
            height: 10,
          ),
          //PrePaid Card
          Container(
            child: Card(
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 10,
              child: Container(
                height: 210,
                width: 300,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 0.0, right: 0.0, left: 0.0),
                      child: Container(
                        decoration: new BoxDecoration(
                          color: Colors.lightBlue,
                          borderRadius: new BorderRadius.only(
                            topLeft: const Radius.circular(15.0),
                            topRight: const Radius.circular(15.0),
                          ),
                        ),
                        //color: Colors.blueAccent,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  height: 40,
                                  width: 40,
                                  child: Image.asset(
                                    'images/ncbaLogo.jpg',
                                    fit: BoxFit.contain,
                                  )),
                            ),
                            Container(
                              child: Text(
                                'Powered by NCBA',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                child: Text(
                                  'PRE PAID CARD',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          child: Row(
                        children: <Widget>[
                          Text(
                            '0.00',
                            style: TextStyle(fontSize: 50, color: Colors.white),
                          ),
                          Text(
                            'KES',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      )),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            GestureDetector(
                                onTap: () {
                                  showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return AlertDialog(
                                          title: Text('PRE-PAID CARD'),
                                          content: Text(
                                              'The prepaid card is an electronic card issued by NCBA'
                                              ' that can be used to pay for goods and services. You can load'
                                              'money into the card via a credit/debit card such as those issued by Visa and MasterCard. '
                                              'The prepaid card works at any merchant that accepts Senty for payment. '
                                              'It is a safe way of travelling without your wallet'),
                                          actions: <Widget>[
                                            FlatButton(
                                              child: Text('Got it'),
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                            )
                                          ],
                                        );
                                      });
                                },
                                child: Text(
                                  'What is this?',
                                  style: TextStyle(color: Colors.white),
                                ))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),

          //Selected Amount and History
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Select Amount (KES)'),
                  GestureDetector(
                      onTap: () {
                        print('Set up history');
                      },
                      child: Text(
                        'History',
                        style: TextStyle(color: Colors.blue),
                      )),
                ],
              ),
            ),
          ),
          //Top up Amounts
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                     // Navigator.push(context, MaterialPageRoute(builder: (context)=>Setup Bank Card()));
                    },
                    child: Card(
                      child: Container(
                        height: 50,
                        width: 200,
                        child: Text(
                          '1000',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.blue),
                        ),
                        alignment: Alignment.center,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      elevation: 5,
                    ),
                  ),
                ),
                Expanded(
                  child: Card(
                    child: Container(
                      height: 50,
                      width: 200,
                      child: Text(
                        '5000',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.blue),
                      ),
                      alignment: Alignment.center,
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    elevation: 5,
                  ),
                ),
              ],
            ),
          ),
               SizedBox(
            height: 10,
          ),
              Container(
               child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  child: Card(
                    child: Container(
                      height: 50,
                      width: 200,
                      child: Text(
                        '10000',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.blue),
                      ),
                      alignment: Alignment.center,
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    elevation: 5,
                  ),
                ),
                Expanded(
                  child: Card(
                    child: Container(
                      height: 50,
                      width: 200,
                      child: Text(
                        'Other Amount',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.blue),
                      ),
                      alignment: Alignment.center,
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    elevation: 5,
                  ),
                ),
              ],
            ),
          ),
              SizedBox(
            height: 30),
              Padding(
            padding: const EdgeInsets.all(8.0),
                 child: Container(
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.black12)),
                height: 100,
                width: 300,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(
                      Icons.credit_card,
                      color: Colors.orange,
                    ),
                    Text(
                      'How does your prepaid card work? > >',
                      style: TextStyle(color: Colors.blueAccent, fontSize: 18),
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'How to use (FAQ)',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          Container(
              child: Column(children: <Widget>[
            Divider(),
            ExpansionTile(
              title: Text("What is the Prepaid Card"),
              trailing: Icon(Icons.arrow_downward),
              backgroundColor: Colors.white10,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        "The pre paid card is jointly issued by NCBA Bank. It allows Senty users to pay for goods"
                        "and services in Kenya",
                        textAlign: TextAlign.start,
                        style: TextStyle(color: Colors.black38, fontSize: 12.0),
                      ),
                    ),
                  ],
                )
              ],
            ),
            ExpansionTile(
              title: Text("Limitations of top - up"),
              trailing: Icon(Icons.arrow_downward),
              backgroundColor: Colors.white10,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        "The minimum top amount is KES 1,000, and the maximum is KES 100,000. The cumlative top up amount shall not"
                        "exceed 100,000 for each pre paid card",
                        textAlign: TextAlign.start,
                        style: TextStyle(color: Colors.black38, fontSize: 12.0),
                      ),
                    ),
                  ],
                )
              ],
            ),
            ExpansionTile(
              title: Text("Supported Cards"),
              trailing: Icon(Icons.arrow_downward),
              backgroundColor: Colors.white10,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        "We currently support 2 main stream card schemes:Visa and MasterCard",
                        textAlign: TextAlign.start,
                        style: TextStyle(color: Colors.black38, fontSize: 12.0),
                      ),
                    ),
                  ],
                )
              ],
            ),
            ExpansionTile(
              title: Text("Where can i use the Prepaid Card"),
              trailing: Icon(Icons.arrow_downward),
              backgroundColor: Colors.white10,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        "You can use the prepaid card in over 20K Merchant outlets in Kenya",
                        textAlign: TextAlign.start,
                        style: TextStyle(color: Colors.black38, fontSize: 12.0),
                      ),
                    ),
                  ],
                )
              ],
            ),
            Divider(),
          ]))
        ])));
  }
}
