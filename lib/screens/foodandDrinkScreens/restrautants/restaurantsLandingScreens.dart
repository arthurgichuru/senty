import 'package:flutter/material.dart';
import 'package:senty/screens/foodandDrinkScreens/restrautants/Javamenu.dart';
import 'javamenuScreen2.dart';


class RestaurantsLandingScreen extends StatefulWidget {

  Javamenu menu1;
  final ValueChanged<bool> isSelected;

  RestaurantsLandingScreen({Key key,@required this.menu1,this.isSelected}):super(key:key);

  @override
  _RestaurantsLandingScreenState createState() => _RestaurantsLandingScreenState();
}

class _RestaurantsLandingScreenState extends State<RestaurantsLandingScreen> {

  final restaurantImages = ['images/galitosfood.jpg', 'images/galitosfood.jpg'];
  final restaurantNames =['GALITOS RESTAURANT WESTALNDS', 'JAVA SARIT'];


  bool isSelected = false;



  @override
  Widget build(BuildContext context) {



   widget.menu1 =  Javamenu(breakfastmenuItem: 'breakfast',breakfastmenuPrice: 'KES 500', lunchmenuItem:'Bugger',lunchprice:'KES 800' );


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
                    title: Text("Food and Drink",
                        style: TextStyle(color: Colors.white, fontSize: 16.0,)),
                    background: Image.asset('images/foodanddrink.jpeg',
                      fit: BoxFit.cover,
                    )),
              ),
            ];
          },
          body: Container(
            child: ListView.builder(
              itemCount: restaurantImages.length,
              itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        isSelected = !isSelected;
                        widget.isSelected(isSelected);
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>JavaMenu2(menu: widget.menu1)));
                      });
                    },
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)
                      ),
                      child: Container(
                        height: 200,
                        width: double.infinity,
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: Container(
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.asset(restaurantImages[index],fit: BoxFit.contain))),
                            ),
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(restaurantNames[index], style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16, color:Colors.black),),
                                ))
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              }
            )
            ),
          ),
        );
  }
}

