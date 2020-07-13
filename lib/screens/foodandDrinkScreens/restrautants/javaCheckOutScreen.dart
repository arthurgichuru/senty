import 'package:flutter/material.dart';

class JavaCheckOutScreen extends StatefulWidget {
  @override
  _JavaCheckOutScreenState createState() => _JavaCheckOutScreenState();
}

class _JavaCheckOutScreenState extends State<JavaCheckOutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Check out'),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        width:30,
                        child: Text('Chiken Chooza', style: TextStyle(fontSize: 16),),
                      ),
                      flex: 1,
                    ),
                    Expanded(
                      child: Container(
                        width:10,
                        child: Text('KES 1,700.00', style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                      ),
                      flex: 1,
                    ),
                    Expanded(
                      child: Container(
                        child: RaisedButton(
                          color: Colors.blue,
                          onPressed: (){},
                          elevation: 10,
                          child: Text('BUY', style: TextStyle(color: Colors.white),),
                        )
                      ),
                      flex: 1,
                    ),
                  ],
                ),
              ),
            ),
            Divider(),
            SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: <Widget>[
                  Container(
                    child: Icon(Icons.directions_bike, color: Colors.blue,),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    child: Text('Delivery Details'),
                  ),
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        child: Text('Location', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                      ),
                      flex: 1,
                    ),
                    Expanded(
                      child: Container(
                        child: Text('NCBA WestLands, \nGrenadier Annex, 2nd Floor'),
                      ),
                      flex: 1,
                    ),
                  ],
                ),
              ),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
