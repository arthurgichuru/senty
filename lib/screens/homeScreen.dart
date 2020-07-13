import 'package:flutter/material.dart';
import 'package:senty/screens/payToTillScreen/payToTillScreen.dart';
import 'package:senty/screens/scanQRtoPayScreen/scanQRtoPay.dart';
import 'package:senty/screens/sendMoneyScreen/sendMoneyLandingScreen.dart';
import 'package:senty/screens/utilitiesScreen/utilitiesScreen.dart';
import 'package:senty/screens/walletScreen/walletLandingScreen.dart';
import 'package:flutter/services.dart';
import 'package:senty/widgets/homeScreenWidgets/BankingandFinanceWidget.dart';
import 'package:senty/widgets/homeScreenWidgets/DealsSwiperWidget.dart';
import 'package:senty/widgets/homeScreenWidgets/EntertainmentWidget.dart';
import 'package:senty/widgets/homeScreenWidgets/FoodDrinkWidget.dart';
import 'package:senty/widgets/homeScreenWidgets/HousingWidget.dart';
import 'package:senty/widgets/homeScreenWidgets/LoopCreditWidget.dart';
import 'package:senty/widgets/homeScreenWidgets/LoopWidget.dart';
import 'package:senty/widgets/homeScreenWidgets/MoreWidget.dart';
import 'package:senty/widgets/homeScreenWidgets/ParkingWidget.dart';
import 'package:senty/widgets/homeScreenWidgets/SendyWidget.dart';
import 'package:senty/widgets/homeScreenWidgets/TellFriendWidget.dart';
import 'package:senty/widgets/homeScreenWidgets/TheatersWidget.dart';
import 'package:senty/widgets/homeScreenWidgets/TicketsWidget.dart';
import 'package:senty/widgets/homeScreenWidgets/TransportWidget.dart';
import 'package:senty/widgets/homeScreenWidgets/UberWidget.dart';
import 'package:senty/widgets/homeScreenWidgets/UtilitiesWidget.dart';
import 'LifeStyle/LifeStyleLandingScreen.dart';
import 'brandDealScreens/brandDealScreen.dart';
import 'foodandDrinkScreens/foodandDrinkLandingScreens.dart';
import 'foodandDrinkScreens/restrautants/restaurantsLandingScreens.dart';
import 'moviesScreens/moviesLandingScreen.dart';
import 'package:url_launcher/url_launcher.dart';


class HomeScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return  WillPopScope(
      onWillPop: () => _exitApp(context),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Form(
        key: _formKey,
        child: Scaffold(
          appBar: AppBar(
            title: Text('LOOP PAY'),
          ),
          body: ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: new BoxDecoration(
                      color: Colors.lightBlue,
                      borderRadius: new BorderRadius.only(
                          topLeft:  const  Radius.circular(15.0),
                          topRight: const  Radius.circular(15.0),
                          bottomLeft: const Radius.circular(15.0),
                          bottomRight: const Radius.circular(15.0)

                      )
                  ),
                  height: 110,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        FlatButton(
                          onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>ScanQRToPayScreen()));},
                          child: Column(
                            children: <Widget>[
                              Container(
                                  height: 40,
                                  width: 40,
                                  child: Image.asset('images/scan.png', fit: BoxFit.fill, color: Colors.white,)
                              ),
                              SizedBox(height: 5,),
                              Container(
                                child: Text('Scan',style: TextStyle(color: Colors.white)),
                              )
                            ],
                          ),
                        ),
                        FlatButton(
                          onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>PayToTillScreen()));},
                          child: Column(
                            children: <Widget>[
                              Container(
                                  height: 40,
                                  width: 40,
                                  child: Image.asset('images/paybyCode.png', fit: BoxFit.fill, color: Colors.white,)
                              ),
                              SizedBox(height: 5,),
                              Container(
                                child: Text('Pay Till',style: TextStyle(color: Colors.white)),
                              )
                            ],
                          ),
                        ),
                        FlatButton(
                          onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>SendMoneyLandingScreen()));},
                          child: Column(
                            children: <Widget>[
                              Container(
                                  height: 40,
                                  width: 40,
                                  child: Image.asset('images/sendMoney.png', fit: BoxFit.fill, color: Colors.white,)
                              ),
                              SizedBox(height: 5,),
                              Container(
                                child: Text('Send',style: TextStyle(color: Colors.white)),
                              )
                            ],
                          ),
                        ),
                        FlatButton(
                          onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>WalletLandingScreen()));},
                          child: Column(
                            children: <Widget>[
                              Container(
                                  height: 40,
                                  width: 40,
                                  child: Image.asset('images/wallet.png', fit: BoxFit.fill, color: Colors.white,)
                              ),
                              SizedBox(height: 5,),
                              Container(
                                child: Text('Wallet',style: TextStyle(color: Colors.white)),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Divider(),
              //Body of the App
              Container(
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Frequent Transactions', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10,),
              //<Invite Friends><Top-up Center><Utilities><Senti Credit>
              Container(
                //color: Colors.red,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[

                    FoodDrinkWidget(
                      buttonOnpressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>RestaurantsLandingScreen()));} ,
                    ),


                    TransportWidget(
                      buttonOnpressed:(){} ,
                    ),

                    UtilitiesWidget(
                      buttonOnpressed:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>UtilitiesScreen()));},
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40,),
              //<Transfer><Top-up Center><Utilities><Senti Credit>

              SizedBox(height: 30,),

              Container(
                //color: Colors.red,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[

                    HousingWidget(
                      //buttonOnpressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>UtilitiesScreen()));},
                    ),

                    RetailWidget(
                      buttonOnpressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>BrandDealScreens()));},
                    ),

                    EntertainmentWidget(
                      buttonOnpressed:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>LifestyleLandingScree()));} ,
                    ),

                  ],
                ),
              ),
              Divider(),

              //Swiper View

              DealsSwiperWidget(
                dealoneOnpressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>BrandDealScreens()));},
                dealtwoOnpressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>BrandDealScreens()));},
                dealthreeOnpressed:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>BrandDealScreens()));},
                dealfourOnpressed:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>BrandDealScreens()));},
                dealfiveOnpressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>BrandDealScreens()));},
              ),

              //<end of Swiper

              SizedBox(height: 20,),
              Divider(),

              //<Mini Progrograms
              Container(
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Mini programs', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                    )
                  ],
                ),
              ),
             //<Electricity<Water<CableTv<Internet>

              SizedBox(height: 30,),

              //<Movies<Events<Theater<More>

              Container(
                //color: Colors.red,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[

                    UberWidget(
                      buttonOnpressed:_launchUber ,
                    ),

                    SendyWidget(
                      buttonOnpressed: _launchSendy,
                    ),

                    LoopCreditWidget(),

                    ParkingWidget(buttonOnpressed: (){}),

                  ],
                ),
              ),
              SizedBox(height: 30,),
              Container(
                //color: Colors.red,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[

                    TellFriendWidget(),

                    TicketsWidget(),

                    TheatersWidget(),

                    MoreWidget(buttonOnpressed: (){}),

                  ],
                ),
              ),

              SizedBox(height: 30,),
              //<<Star collections>
              Container(
                //color: Colors.red,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          Card(
                            elevation: 10,
                            child: Container(
                                height: 120,
                                width: 300,
                                child: GestureDetector(
                                    onTap: (){
                                      //Navigator.push(context, MaterialPageRoute(builder: (context)=>InternetCompanyScreens()));
                                    },
                                    child: Image.asset('images/discountOne.jpg', fit: BoxFit.fill))
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          Card(
                            elevation: 10,
                            child: Container(
                                height: 120,
                                width: 300,
                                child: GestureDetector(
                                    onTap: (){
                                      //Navigator.push(context, MaterialPageRoute(builder: (context)=>InternetCompanyScreens()));
                                    },
                                    child: Image.asset('images/discountTwo.jpg', fit: BoxFit.fill))
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                //color: Colors.red,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          Card(
                            elevation: 10,
                            child: Container(
                                height: 120,
                                width: 300,
                                child: GestureDetector(
                                    onTap: (){
                                      //Navigator.push(context, MaterialPageRoute(builder: (context)=>InternetCompanyScreens()));
                                    },
                                    child: Image.asset('images/discountFive.jpeg',fit: BoxFit.fill))
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          Card(
                            elevation: 10,
                            child: Container(
                                height: 120,
                                width: 300,
                                child: GestureDetector(
                                    onTap: (){
                                      //Navigator.push(context, MaterialPageRoute(builder: (context)=>InternetCompanyScreens()));
                                    },
                                    child: Image.asset('images/dealSix.jpeg', fit: BoxFit.fill))
                            ),
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      )
    );
  }
  Future<bool> _exitApp(BuildContext context) {
    return showDialog(
      context: context,
      child: new AlertDialog(
        title: new Text('Do you want to exit this CENTI?'),
        content: new Text('We hate to see you leave...'),
        actions: <Widget>[
          new FlatButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: new Text('No'),
          ),
          new FlatButton(
            onPressed: () => SystemNavigator.pop(),
            child: new Text('Yes'),
          ),
        ],
      ),
    ) ??
        false;
  }

  Future <void> _launchLoop()async {
    const url = 'https://www.cbaloop.com';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}

Future <void> _launchUber()async {
  const url = 'https://auth.uber.com/login/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

Future <void> _launchSendy()async {
  const url = 'https://app.sendyit.com/auth/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

