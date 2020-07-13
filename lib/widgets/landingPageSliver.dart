import 'package:flutter/material.dart';

class MySliverAppBar extends SliverPersistentHeaderDelegate {
  final double expandedHeight;

  MySliverAppBar({@required this.expandedHeight});

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;

  @override
  Widget build(BuildContext context, double shrinkOffset,
      bool overlapsContent) {
    return Stack(
      fit: StackFit.expand,
      overflow: Overflow.clip,
      children: [
        Opacity(
          opacity: (shrinkOffset / expandedHeight),
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Container(
                   height: 30,
                    width: 30,
                    child: InkWell(
                        onTap: (){},
                        child: Image.asset('images/scan.png',color: Colors.white , fit: BoxFit.fill,)),
                  ),
                  SizedBox(width: 20,),
                  Container(
                    height: 30,
                    width: 30,
                    child: InkWell(
                        onTap: (){},
                        child: Image.asset('images/paybyCode.png',color: Colors.white , fit: BoxFit.fill,)),
                  ),
                  SizedBox(width: 20,),
                  Container(
                    height: 30,
                    width: 30,
                    child: InkWell(
                        onTap: (){},
                        child: Image.asset('images/scanMe.png',color: Colors.white , fit: BoxFit.fill,)),
                  ),
                ],
              ),
            ),
            color: Colors.blue,
          ),
        ),
        Opacity(
         opacity: (1 - shrinkOffset / expandedHeight),
          child: Container(
            color: Colors.blue,
            child: Padding(
              padding: const EdgeInsets.only(top:20.0),
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            height: 40,
                            width: 40,
                            child: InkWell(
                              onTap: (){},
                                child: Image.asset('images/scan.png', fit: BoxFit.fill, color: Colors.white,))
                        ),
                      ),
                      SizedBox(height: 5,),
                      Container(
                        alignment: Alignment.center,
                        child: Text('Scan',style: TextStyle(color: Colors.white)),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            height: 40,
                            width: 40,
                            child: InkWell(
                                onTap: (){},
                                child: Image.asset('images/paybyCode.png', fit: BoxFit.fill, color: Colors.white,))
                        ),
                      ),
                      SizedBox(height: 5,),
                      Container(
                        alignment: Alignment.center,
                        child: Text('Pay', style: TextStyle(color: Colors.white)),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            height: 40,
                            width: 40,
                            child: InkWell(
                                onTap: (){},
                                child: Image.asset('images/sendMoney.png', fit: BoxFit.fill, color: Colors.white,))
                        ),
                      ),
                      SizedBox(height: 5,),
                      Container(
                        alignment: Alignment.center,
                        child: Text('Send', style: TextStyle(color: Colors.white),),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            height: 40,
                            width: 40,
                            child: InkWell(
                                onTap: (){},
                                child: Image.asset('images/wallet.png', fit: BoxFit.fill, color: Colors.white,))
                        ),
                      ),
                      SizedBox(height: 5,),
                      Container(
                        alignment: Alignment.center,
                        child: Text('Wallet', style: TextStyle(color: Colors.white)),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

