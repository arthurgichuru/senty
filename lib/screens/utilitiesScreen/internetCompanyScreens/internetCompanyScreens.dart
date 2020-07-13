import 'package:flutter/material.dart';
import 'package:senty/screens/utilitiesScreen/internetCompanyScreens/topUpSafcomHomeScreen/topUpSafcomHomeScreen.dart';
import 'package:senty/screens/utilitiesScreen/internetCompanyScreens/topUpZukuScreen/topUpZukuScreen.dart';
import 'package:senty/widgets/titleDescriptionWidget.dart';

class InternetCompanyScreens extends StatefulWidget {
  @override
  _InternetCompanyScreensState createState() => _InternetCompanyScreensState();
}

class _InternetCompanyScreensState extends State<InternetCompanyScreens> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Form(
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 200.0,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                    centerTitle: false,
                    title: Text("Internet", style: TextStyle(color: Colors.white, fontSize: 16.0,)),
                    background: Image.asset(
                      'images/internetsliver.jpg',
                      fit: BoxFit.cover,
                    )),
              ),
            ];
          },
          body: Container(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: ListView(
                  children: <Widget>[
                    ListTile(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>TopUpSafcomHomeScreen()));
                      },
                      leading: Icon(Icons.wifi,color: Colors.blue,),
                      title: Text('Safaricom Home'),
                      trailing: IconButton(icon: (Icon(Icons.arrow_forward)), onPressed: null),
                    ),
                    Divider(),
                    ListTile(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>TopUpZukuScreen()));
                      },
                      leading: Icon(Icons.wifi,color: Colors.blue,),
                      title: Text('Zuku'),
                      trailing: IconButton(icon: (Icon(Icons.arrow_forward)), onPressed: null),
                    ),
                    Divider(),
                  ]
              ),
            ),
          ),
        ),
      ),
    );
  }
}
