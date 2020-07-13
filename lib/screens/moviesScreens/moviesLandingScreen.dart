import 'package:flutter/material.dart';


class MoviesLandingPage extends StatefulWidget {
  @override
  _MoviesLandingPageState createState() => _MoviesLandingPageState();
}

class _MoviesLandingPageState extends State<MoviesLandingPage> {
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
                  background: Image.asset('images/moviesheading.png',
                    fit: BoxFit.fill,
                  )),
            ),
          ];
        },
          body: Container(
            child: ListView(
              children: <Widget>[
                ListTile(
                  onTap: (){

                  },
                  leading: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    elevation: 10,
                    child: Container(
                      height: 200,
                      width: 100,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('images/angaskycinema.png',),
                      ),
                    ),
                  ),
                  title: Text('Diamond Plaza'),
                  trailing: Icon(Icons.arrow_forward)
                ),
            Divider(),
            ListTile(
                onTap: (){

                },
                leading: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  elevation: 10,
                  child: Container(
                    height: 200,
                    width: 100,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('images/angaskycinema.png',),
                    ),
                  ),
                ),
                title: Text('Sky, Panari Centre'),
                trailing: Icon(Icons.arrow_forward)
            ),
                Divider(),
            ListTile(
                onTap: (){

                },
                leading: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  elevation: 10,
                  child: Container(
                    height: 200,
                    width: 100,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('images/angaskycinema.png',),
                    ),
                  ),
                ),
                title: Text('IMAX, CBD'),
                trailing: Icon(Icons.arrow_forward)
            ),
                Divider(),
                ListTile(
                    onTap: (){

                    },
                    leading: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      elevation: 10,
                      child: Container(
                        height: 200,
                        width: 100,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('images/centuryCinemax.png' ,fit: BoxFit.cover,),
                        ),
                      ),
                    ),
                    title: Text('Junction'),
                    trailing: Icon(Icons.arrow_forward)
                ),
                Divider(),
                ListTile(
                    onTap: (){

                    },
                    leading: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      elevation: 10,
                      child: Container(
                        height: 200,
                        width: 100,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('images/centuryCinemax.png' ,fit: BoxFit.cover,),
                        ),
                      ),
                    ),
                    title: Text('Garden City'),
                    trailing: Icon(Icons.arrow_forward)
                ),
                Divider(),
                ListTile(
                    onTap: (){

                    },
                    leading: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      elevation: 10,
                      child: Container(
                        height: 200,
                        width: 100,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('images/westgatecinema.png' ,fit: BoxFit.cover,),
                        ),
                      ),
                    ),
                    title: Text('Westgate Cinema'),
                    trailing: Icon(Icons.arrow_forward)
                ),
                Divider(),
          ]
        ),
          ),
    )
    );
  }
}
