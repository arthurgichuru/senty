import 'package:flutter/material.dart';

class BrandDealScreens extends StatefulWidget {
  @override
  _BrandDealScreensState createState() => _BrandDealScreensState();
}

class _BrandDealScreensState extends State<BrandDealScreens> {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
      return <Widget>[
        SliverAppBar(
          expandedHeight: 200.0,
          floating: false,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              //title: Text("Brand Deals", style: TextStyle(color: Colors.white, fontSize: 16.0,)),
              background: Image.asset('images/bestDeals.png', fit: BoxFit.cover,)),
        ),
      ];
    },
    body: Container(
      child: Text('Great deals will be here'),
    ),
    )
    );
  }
}
