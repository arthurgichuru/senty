import 'package:flutter/material.dart';
import 'package:senty/screens/utilitiesScreen/cableTVCompanyScreens/topDstvCoScreen/topDstvCoScreen.dart';
import 'package:senty/screens/utilitiesScreen/cableTVCompanyScreens/topGOtvCoScreen/topGotvCoScreen.dart';
import 'package:senty/screens/utilitiesScreen/waterCompanyScreens/topUpnairobiWaterCoScreen/topnairobiWaterCoScreen.dart';
import 'package:senty/screens/utilitiesScreen/waterCompanyScreens/topUpruiruJujaWaterCoScreen/topruiruJujaWaterCoScreen.dart';
import 'package:senty/widgets/titleDescriptionWidget.dart';

class CableTVScreens extends StatefulWidget {
  @override
  _CableTVScreensState createState() => _CableTVScreensState();
}

class _CableTVScreensState extends State<CableTVScreens> {

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
                    title: Text("Cable TV", style: TextStyle(color: Colors.white, fontSize: 16.0,)),
                    background: Image.asset(
                      'images/cabletvsliver.jpg',
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
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>TopUpDSTVScreen()));
                      },
                      leading: Icon(Icons.tv,color: Colors.blue,),
                      title: Text('DSTV'),
                      trailing: IconButton(icon: (Icon(Icons.arrow_forward)), onPressed: null),
                    ),
                    Divider(),
                    ListTile(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>TopUpGOTVScreen()));
                      },
                      leading: Icon(Icons.tv,color: Colors.blue,),
                      title: Text('GOTV'),
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
