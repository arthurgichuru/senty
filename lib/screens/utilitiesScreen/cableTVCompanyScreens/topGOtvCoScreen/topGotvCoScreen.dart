import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:senty/screens/utilitiesScreen/cableTVCompanyScreens/topDstvCoScreen/topupDstvSuccessScreen.dart';
import 'package:senty/screens/utilitiesScreen/cableTVCompanyScreens/topGOtvCoScreen/topupGOtvSuccessScreen.dart';
import 'package:senty/screens/utilitiesScreen/kenyaPowerLightingScreens/topupKPLCSuccessScreen.dart';
import 'package:senty/screens/utilitiesScreen/waterCompanyScreens/topUpnairobiWaterCoScreen/topupnairobiWaterCoSuccessScreen.dart';


class TopUpGOTVScreen extends StatefulWidget {
  @override
  _TopUpGOTVScreenState createState() => _TopUpGOTVScreenState();
}

class _TopUpGOTVScreenState extends State<TopUpGOTVScreen> {

  var controller = new MoneyMaskedTextController(decimalSeparator: '.', thousandSeparator: ',');


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GOTV'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.all(8.0),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.format_list_numbered,color: Colors.blue,),
                      labelText: 'Account Number'
                    ),
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
                    controller:controller,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.monetization_on,color: Colors.blue,),
                        labelText: 'Amount'
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30,),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: RaisedButton(
                  color: Colors.blue,
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>TopUpGOTVSuccessScreen()));
                  },
                  child: Container(
                      width: double.infinity,
                      child: Text('PAY',style: TextStyle(color: Colors.white),textAlign: TextAlign.center,)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
