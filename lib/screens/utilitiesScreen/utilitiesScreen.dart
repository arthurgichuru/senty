import 'package:flutter/material.dart';
import 'package:senty/screens/utilitiesScreen/waterCompanyScreens/waterCompanyScreens.dart';
import 'cableTVCompanyScreens/cableTvCompanyScreens.dart';
import 'internetCompanyScreens/internetCompanyScreens.dart';
import 'kenyaPowerLightingScreens/topUpKPLCScreen.dart';

class UtilitiesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return    Scaffold(
        body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
      return <Widget>[
        SliverAppBar(
          expandedHeight: 200.0,
          floating: false,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
              centerTitle: false,
              title: Text("Utilities", style: TextStyle(color: Colors.white, fontSize: 16.0,)),
              background: Image.asset('images/utilitiessliver.jpg',
                fit: BoxFit.cover,
              )),
        ),
      ];
    },
      body: ListView(
        children: <Widget>[
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              //color: Colors.red,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: FlatButton(
                      onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>TopUpKPLCScreen()));},
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 5,),
                          Container(
                              height: 40,
                              width: 40,
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Image.asset('images/electricity.png',fit: BoxFit.fill, ),
                              )
                          ),
                          SizedBox(height: 5,),
                          Container(
                            alignment: Alignment.center,
                            child: Text('Electricity',style: TextStyle(color: Colors.black, fontSize: 12)),
                          )
                        ],
                      ),
                    ),
                    flex: 1,
                  ),
                  Expanded(
                    child: FlatButton(
                      onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>WaterCompanyScreens()));},
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 5,),
                          Container(
                              height: 40,
                              width: 40,
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Image.asset('images/water.png', color: Colors.blueAccent,fit: BoxFit.fill, ),
                              )
                          ),
                          SizedBox(height: 5,),
                          Container(
                            alignment: Alignment.center,
                            child: Text('Water',style: TextStyle(color: Colors.black, fontSize: 12)),
                          )
                        ],
                      ),
                    ),
                    flex: 1,
                  ),
                  Expanded(
                    child: FlatButton(
                      onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>CableTVScreens()));},
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 5,),
                          Container(
                              height: 40,
                              width: 40,
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Image.asset('images/cableTv.png', color: Colors.blueAccent,fit: BoxFit.fill, ),
                              )
                          ),
                          SizedBox(height: 5,),
                          Container(
                            alignment: Alignment.center,
                            child: Text('Cable TV',style: TextStyle(color: Colors.black, fontSize: 12)),
                          )
                        ],
                      ),
                    ),
                    flex: 1,
                  ),
                  Expanded(
                    child: FlatButton(
                      onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>InternetCompanyScreens()));},
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 5,),
                          Container(
                              height: 40,
                              width: 40,
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Image.asset('images/internet.png', color: Colors.blueAccent,fit: BoxFit.fill, ),
                              )
                          ),
                          SizedBox(height: 5,),
                          Container(
                            alignment: Alignment.center,
                            child: Text('Internet',style: TextStyle(color: Colors.black, fontSize: 12)),
                          )
                        ],
                      ),
                    ),
                    flex: 1,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
        ),
    );
  }
}
