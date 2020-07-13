import 'package:flutter/material.dart';

import 'javaCheckOutScreen.dart';


class JavaMenuScreen extends StatefulWidget {
  @override
  _JavaMenuScreenState createState() => _JavaMenuScreenState();
}

class _JavaMenuScreenState extends State<JavaMenuScreen> {
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
                    title: Text("Food and Drink",
                        style: TextStyle(color: Colors.white, fontSize: 16.0,)),
                    background: Image.asset('images/foodanddrink.jpeg',
                      fit: BoxFit.cover,
                    )),
              ),
            ];
          },
          body: Container(
            child: ListView(
              children: <Widget>[
                Container(
                  child: Text('BEST SELLERS', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),), alignment: Alignment.center,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>JavaCheckOutScreen()));
                    },
                    title: Text('Chiken Chooza'),
                    subtitle: Text('Full spring chiken with chips'),
                    trailing: Text('KES 1,700.00'),
                  ),
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    onTap: () {},
                    title: Text('Chiken Poussin (Capon)'),
                    subtitle: Text('Half'),
                    trailing: Text('KES 1,525.00'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    onTap: () {},
                    title: Text('Boneless Tikka'),
                    subtitle: Text('Served with chips/naan'),
                    trailing: Text('KES 1,6455.00'),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  child: Text('SALADS', style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),), alignment: Alignment.center,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    onTap: () {},
                    title: Text('Mixed Salad'),
                    trailing: Text('KES 590.00'),
                  ),
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    onTap: () {},
                    title: Text('Coleslaw Salad'),
                    trailing: Text('KES 590.00'),
                  ),
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    onTap: () {},
                    title: Text('Greek Salad'),
                    trailing: Text('KES 940.00'),
                  ),
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    onTap: () {},
                    title: Text('Bruschetta'),
                    trailing: Text('KES 590.00'),
                  ),
                ),
                Divider(),
                SizedBox(height: 10,),
                Container(
                  child: Text('SALADS', style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),), alignment: Alignment.center,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    onTap: () {},
                    title: Text('Beef Burger'),
                    subtitle: Text('Onions, Tomatoes'),
                    trailing: Text('KES 590.00'),
                  ),
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    onTap: () {},
                    title: Text('Chiken Burger'),
                    subtitle: Text('Onions, Tomatoes'),
                    trailing: Text('KES 590.00'),
                  ),
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    onTap: () {},
                    title: Text('Big Beef'),
                    subtitle: Text('Double Party, Chiles, Onions, Tomatoes'),
                    trailing: Text('KES 690.00'),
                  ),
                ),
                Divider(),
              ],
            ),
          ),
        )
    );
  }
}
