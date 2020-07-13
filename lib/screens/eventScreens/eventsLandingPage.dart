import 'package:flutter/material.dart';


class EventsLandingPage extends StatefulWidget {
  @override
  _EventsLandingPageState createState() => _EventsLandingPageState();
}

class _EventsLandingPageState extends State<EventsLandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 200.0,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                    centerTitle: false,
                    //title: Text("Utilities", style: TextStyle(color: Colors.white, fontSize: 16.0,)),
                    background: Image.asset('images/events.jpg',
                      fit: BoxFit.fill,
                    )),
              ),
            ];
          },
          body: Container(
            child: ListView(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      child: Row(
                        children: <Widget>[
                          Container(
                            height: 70,
                            width: 100,
                            child: Card(
                              elevation: 10,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                            ),
                              child: Image.asset('images/eventOne.jpeg',fit: BoxFit.cover,),
                          )
                          ),
                          SizedBox(width: 20,),
                          Container(
                            child: Text('Zoom event'),
                          ),
                          Expanded(child: SizedBox(width: 150,)),
                          Container(
                            child: Icon(Icons.arrow_forward, color: Colors.grey,),
                          )
                        ],
                      ),
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      child: Row(
                        children: <Widget>[
                          Container(
                              height: 70,
                              width: 100,
                              child: Card(
                                elevation: 10,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                child: Image.asset('images/eventTwo.jpeg',fit: BoxFit.cover,),
                              )
                          ),
                          SizedBox(width: 20,),
                          Container(
                            child: Text('Skype event'),
                          ),
                          Expanded(child: SizedBox(width: 150,)),
                          Container(
                            child: Icon(Icons.arrow_forward, color: Colors.grey,),
                          )
                        ],
                      ),
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      child: Row(
                        children: <Widget>[
                          Container(
                              height: 70,
                              width: 100,
                              child: Card(
                                elevation: 10,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                child: Image.asset('images/eventFour.jpeg',fit: BoxFit.cover,),
                              )
                          ),
                          SizedBox(width: 20,),
                          Container(
                            child: Text('Google Meet event'),
                          ),
                          Expanded(child: SizedBox(width: 100,)),
                          Container(
                            child: Icon(Icons.arrow_forward, color: Colors.grey,),
                          )
                        ],
                      ),
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      child: Row(
                        children: <Widget>[
                          Container(
                              height: 70,
                              width: 100,
                              child: Card(
                                elevation: 10,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                child: Image.asset('images/eventOne.jpeg',fit: BoxFit.cover,),
                              )
                          ),
                          SizedBox(width: 20,),
                          Container(
                            child: Text('Zoom event'),
                          ),
                          Expanded(child: SizedBox(width: 150,)),
                          Container(
                            child: Icon(Icons.arrow_forward, color: Colors.grey,),
                          )
                        ],
                      ),
                    ),
                  ),
                  Divider(),
                ]
            ),
          ),
        )
    );
  }
}
