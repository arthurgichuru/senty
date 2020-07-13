import 'package:flutter/material.dart';
import 'package:senty/screens/utilitiesScreen/waterCompanyScreens/topUpnairobiWaterCoScreen/topnairobiWaterCoScreen.dart';
import 'package:senty/screens/utilitiesScreen/waterCompanyScreens/topUpruiruJujaWaterCoScreen/topruiruJujaWaterCoScreen.dart';
import 'package:senty/widgets/titleDescriptionWidget.dart';


  class WaterCompanyScreens extends StatefulWidget {
  @override
  _WaterCompanyScreensState createState() => _WaterCompanyScreensState();
}

class _WaterCompanyScreensState extends State<WaterCompanyScreens> {

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
                    title: Text("Water", style: TextStyle(color: Colors.white, fontSize: 16.0,)),
                    background: Image.asset(
                      'images/watersliver.jpg',
                      fit: BoxFit.cover,
                    )),
              ),
            ];
          },
          body: Container(
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: ListView(
                  children: <Widget>[
                    ListTile(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>TopUpNairobiWaterCoScreen()));
                      },
                      leading: Icon(Icons.invert_colors,color: Colors.blue,),
                      title: Text('Nairobi Water & Sewer Co.'),
                      trailing: IconButton(icon: (Icon(Icons.arrow_forward)), onPressed: null),
                    ),
                    Divider(),
                    ListTile(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>TopUpRuiruJujaWaterCoScreen()));
                      },
                      leading: Icon(Icons.invert_colors,color: Colors.blue,),
                      title: Text('Ruiru-Juja Water & Sewer Co.'),
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
