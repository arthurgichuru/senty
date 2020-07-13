import 'package:flutter/material.dart';

import 'Javamenu.dart';


class JavaMenu2 extends StatelessWidget {

   Javamenu menu;

 JavaMenu2({Key key,@required this.menu}) : super(key:key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Java Menu'),
      ),
      body: Container(
        child: Column(
          children: [
            Text(menu.breakfastmenuItem),
            //Text(menu.price)
          ],
        ),
      ),
    );
  }
}

