import 'package:flutter/material.dart';

class TransactionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

  @override
  Widget build(BuildContext context) {
    return Container(
          child: ListView(
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.fastfood, color: Colors.green,),
                title: Text('KES: 10,000'),
                subtitle: Text('Java'),
                trailing: Text('Card'),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.directions_bus, color: Colors.green,),
                title: Text('KES: 500'),
                subtitle: Text('Bupass'),
                trailing: Text('Card'),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.local_taxi, color: Colors.green,),
                title: Text('KES: 900'),
                subtitle: Text('Uber'),
                trailing: Text('Card'),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.movie, color: Colors.green,),
                title: Text('KES: 1,000'),
                subtitle: Text('Netflix'),
                trailing: Text('CARD'),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.free_breakfast, color: Colors.green,),
                title: Text('KES: 270'),
                subtitle: Text('Coffee'),
                trailing: Text('CARD'),
              ),
              Divider(),

            ],
          ),
        );
  }

