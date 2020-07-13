import 'package:flutter/material.dart';
import 'package:senty/screens/eventScreens/eventsLandingPage.dart';
import 'package:senty/screens/moviesScreens/moviesLandingScreen.dart';
import 'package:senty/screens/utilitiesScreen/utilitiesScreen.dart';
import 'package:senty/widgets/homeScreenWidgets/TransportWidget.dart';
import 'package:senty/widgets/homeScreenWidgets/UtilitiesWidget.dart';



class LifestyleLandingScree extends StatefulWidget {
  @override
  _LifestyleLandingScreeState createState() => _LifestyleLandingScreeState();
}

class _LifestyleLandingScreeState extends State<LifestyleLandingScree> {
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
                    title: Text("Life Style", style: TextStyle(color: Colors.black, fontSize: 16.0,)),
                    background: Image.asset('images/entertainment.png',
                      fit: BoxFit.cover,
                    )),
              ),
            ];
          },
          body: ListView(
            children: <Widget>[

              Container(
                //color: Colors.red,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        SizedBox(height: 5,),
                        GestureDetector(
                          onTap:(){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>MoviesLandingPage()));
                          },
                          child: Container(
                              height: 50,
                              width: 50,
                              child: Icon(Icons.movie,size: 40,color: Colors.orangeAccent,)
                          ),
                        ),
                        SizedBox(height: 5,),
                        Container(
                          alignment: Alignment.center,
                          child: Text('Movies',style: TextStyle(color: Colors.black, fontSize: 12)),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        SizedBox(height: 5,),
                        GestureDetector(
                          onTap:(){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>EventsLandingPage()));
                          },
                          child: Container(
                              height: 50,
                              width: 50,
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Icon(Icons.event,size: 40,color: Colors.purple,)
                              )
                          ),
                        ),
                        SizedBox(height: 5,),
                        Container(
                          alignment: Alignment.center,
                          child: Text('Events',style: TextStyle(color: Colors.black, fontSize: 12)),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        SizedBox(height: 5,),
                        GestureDetector(
                          onTap:(){
                            //Navigator.push(context, MaterialPageRoute(builder: (context)=>EventsLandingPage()));
                          },
                          child: Container(
                              height: 50,
                              width: 50,
                              child: Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Icon(Icons.beach_access,size: 40,color: Colors.green,)
                              )
                          ),
                        ),
                        SizedBox(height: 5,),
                        Container(
                          alignment: Alignment.center,
                          child: Text('Holidays',style: TextStyle(color: Colors.black, fontSize: 12)),
                        )
                      ],
                    ),

                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
