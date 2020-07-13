import 'package:flutter/material.dart';
import 'package:senty/screens/topUpScreen/SafaricomScreens/topUpSafaricomScreen.dart';

import 'AirtelScreens/topUpAirtelScreen.dart';
import 'TelkomScreens/topUpTelkomScreen.dart';



class TopUpScreen extends StatelessWidget {
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
              title: Text("Top up", style: TextStyle(color: Colors.white, fontSize: 16.0,)),
              background: Image.asset('images/airtimerecharge.jpg',
                fit: BoxFit.cover,
              )),
        ),
      ];
    },
      body: ListView(
        children: <Widget>[
         // SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(right:40.0,left: 40),
            child: Container(
              //color: Colors.red,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: GestureDetector(
                      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>TopUpSafaricomScreen()));},
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          child: Column(
                            children: <Widget>[
                              SizedBox(height: 5,),
                              Container(
                                  height: 40,
                                  width: 40,
                                  child: Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Image.asset('images/safaricomLogo.png',fit: BoxFit.fill, ),
                                  )
                              ),
                              SizedBox(height: 5,),
                              /*Container(
                                alignment: Alignment.center,
                                child: Text('Safaricom',style: TextStyle(color: Colors.black, fontSize: 12)),
                              )*/
                            ],
                          ),
                        ),
                      ),
                    ),
                    flex: 1,
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: GestureDetector(
                      onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>TopUpAirtelScreen())),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          // (){Navigator.push(context, MaterialPageRoute(builder: (context)=>TopUpAirtelScreen()));},
                          child: Column(
                            children: <Widget>[
                              SizedBox(height: 5,),
                              Container(
                                  height: 40,
                                  width: 40,
                                  child: Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Image.asset('images/airtelLogo.png',fit: BoxFit.fill, ),
                                  )
                              ),
                              SizedBox(height: 5,),
                              /*Container(
                                alignment: Alignment.center,
                                child: Text('Airtel',style: TextStyle(color: Colors.black, fontSize: 12)),
                              )*/
                            ],
                          ),
                        ),
                      ),
                    ),
                    flex: 1,
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: GestureDetector(
                         onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>TopUpAirtelScreen()));},
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          child: Column(
                            children: <Widget>[
                              SizedBox(height: 5,),
                              Container(
                                  height: 40,
                                  width: 40,
                                  child: Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Image.asset('images/telkomLogo.png',fit: BoxFit.fill, ),
                                  )
                              ),
                              SizedBox(height: 5,),
                             /* Container(
                                alignment: Alignment.center,
                                child: Text('Telkom',style: TextStyle(color: Colors.black, fontSize: 12)),
                              )*/
                            ],
                          ),
                        ),
                      ),
                    ),
                    flex: 1,
                  ),
                ],
              ),
          ),
          )
        ],
      ),
        )
    );
  }
}
