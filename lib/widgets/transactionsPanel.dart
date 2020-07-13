import 'package:flutter/material.dart';

class TransactionsPanel extends StatefulWidget {
  @override
  _TransactionsPanelState createState() => _TransactionsPanelState();
}

class _TransactionsPanelState extends State<TransactionsPanel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 40,
                        width: 40,
                        child: InkWell(
                            onTap: (){},
                            child: Image.asset('images/scan.png', fit: BoxFit.fill, color: Colors.white,))
                    ),
                  ),
                  SizedBox(height: 5,),
                  Container(
                    alignment: Alignment.center,
                    child: Text('Scan',style: TextStyle(color: Colors.white)),
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 40,
                        width: 40,
                        child: InkWell(
                            onTap: (){},
                            child: Image.asset('images/paybyCode.png', fit: BoxFit.fill, color: Colors.white,))
                    ),
                  ),
                  SizedBox(height: 5,),
                  Container(
                    alignment: Alignment.center,
                    child: Text('Pay', style: TextStyle(color: Colors.white)),
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 40,
                        width: 40,
                        child: InkWell(
                            onTap: (){},
                            child: Image.asset('images/sendMoney.png', fit: BoxFit.fill, color: Colors.white,))
                    ),
                  ),
                  SizedBox(height: 5,),
                  Container(
                    alignment: Alignment.center,
                    child: Text('Send', style: TextStyle(color: Colors.white),),
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 40,
                        width: 40,
                        child: InkWell(
                            onTap: (){},
                            child: Image.asset('images/wallet.png', fit: BoxFit.fill, color: Colors.white,))
                    ),
                  ),
                  SizedBox(height: 5,),
                  Container(
                    alignment: Alignment.center,
                    child: Text('Wallet', style: TextStyle(color: Colors.white)),
                  )
                ],
              )
            ],
          ),
          Row(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 40,
                        width: 40,
                        child: InkWell(
                            onTap: (){},
                            child: Image.asset('images/scan.png', fit: BoxFit.fill, color: Colors.white,))
                    ),
                  ),
                  SizedBox(height: 5,),
                  Container(
                    alignment: Alignment.center,
                    child: Text('Scan',style: TextStyle(color: Colors.white)),
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 40,
                        width: 40,
                        child: InkWell(
                            onTap: (){},
                            child: Image.asset('images/paybyCode.png', fit: BoxFit.fill, color: Colors.white,))
                    ),
                  ),
                  SizedBox(height: 5,),
                  Container(
                    alignment: Alignment.center,
                    child: Text('Pay', style: TextStyle(color: Colors.white)),
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 40,
                        width: 40,
                        child: InkWell(
                            onTap: (){},
                            child: Image.asset('images/sendMoney.png', fit: BoxFit.fill, color: Colors.white,))
                    ),
                  ),
                  SizedBox(height: 5,),
                  Container(
                    alignment: Alignment.center,
                    child: Text('Send', style: TextStyle(color: Colors.white),),
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 40,
                        width: 40,
                        child: InkWell(
                            onTap: (){},
                            child: Image.asset('images/wallet.png', fit: BoxFit.fill, color: Colors.white,))
                    ),
                  ),
                  SizedBox(height: 5,),
                  Container(
                    alignment: Alignment.center,
                    child: Text('Wallet', style: TextStyle(color: Colors.white)),
                  )
                ],
              )
            ],
          ),
          Row(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 40,
                        width: 40,
                        child: InkWell(
                            onTap: (){},
                            child: Image.asset('images/scan.png', fit: BoxFit.fill, color: Colors.white,))
                    ),
                  ),
                  SizedBox(height: 5,),
                  Container(
                    alignment: Alignment.center,
                    child: Text('Scan',style: TextStyle(color: Colors.white)),
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 40,
                        width: 40,
                        child: InkWell(
                            onTap: (){},
                            child: Image.asset('images/paybyCode.png', fit: BoxFit.fill, color: Colors.white,))
                    ),
                  ),
                  SizedBox(height: 5,),
                  Container(
                    alignment: Alignment.center,
                    child: Text('Pay', style: TextStyle(color: Colors.white)),
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 40,
                        width: 40,
                        child: InkWell(
                            onTap: (){},
                            child: Image.asset('images/sendMoney.png', fit: BoxFit.fill, color: Colors.white,))
                    ),
                  ),
                  SizedBox(height: 5,),
                  Container(
                    alignment: Alignment.center,
                    child: Text('Send', style: TextStyle(color: Colors.white),),
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 40,
                        width: 40,
                        child: InkWell(
                            onTap: (){},
                            child: Image.asset('images/wallet.png', fit: BoxFit.fill, color: Colors.white,))
                    ),
                  ),
                  SizedBox(height: 5,),
                  Container(
                    alignment: Alignment.center,
                    child: Text('Wallet', style: TextStyle(color: Colors.white)),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}


