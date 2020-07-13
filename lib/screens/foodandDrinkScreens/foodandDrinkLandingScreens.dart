import 'package:flutter/material.dart';
import 'package:senty/screens/foodandDrinkScreens/restrautants/restaurantsLandingScreens.dart';
import 'package:senty/screens/utilitiesScreen/utilitiesScreen.dart';
import 'package:senty/widgets/homeScreenWidgets/FoodDrinkWidget.dart';
import 'package:senty/widgets/homeScreenWidgets/TransportWidget.dart';
import 'package:senty/widgets/homeScreenWidgets/UtilitiesWidget.dart';

import 'restrautants/javamenuScreen.dart';


class FoodDrinkLandingScreen extends StatefulWidget {
  @override
  _FoodDrinkLandingScreenState createState() => _FoodDrinkLandingScreenState();
}

class _FoodDrinkLandingScreenState extends State<FoodDrinkLandingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 200.0,
                floating: true,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                    centerTitle: false,
                    title: Text("Food and Drink", style: TextStyle(color: Colors.white, fontSize: 16.0,)),
                    background: Image.asset('images/foodanddrink.jpeg',
                      fit: BoxFit.cover,
                    )),
              ),
            ];
          },
          body: ListView(
            children: <Widget>[
              SizedBox(height:60,),
              Container(
                //color: Colors.red,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[

                    FoodDrinkWidget(
                      buttonOnpressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>RestaurantsLandingScreen()));} ,
                    ),

                    UtilitiesWidget(
                      buttonOnpressed:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>UtilitiesScreen()));},
                    ),


                    TransportWidget(
                      buttonOnpressed:(){} ,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
