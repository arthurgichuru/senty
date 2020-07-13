import 'package:flutter/material.dart';
import 'package:share/share.dart';


class TellFriend extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Invite a friend'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            SizedBox(height: 100,),
            Container(
              height: 150,
              width: 150,
              child: Image.asset('images/tellafriend.png', fit: BoxFit.contain,)
            ),
            SizedBox(height: 100,),
            Center(
              child: Container(
                child:Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Get rewarded with Senty! Share this code to invite your friends.', textAlign: TextAlign.center,style: TextStyle(fontSize: 20),),
                ) ,
              ),
            ),
            SizedBox(height: 50,),
            Container(
              child:Text('Share-0001', style: TextStyle(fontSize: 25, color: Colors.blue,fontWeight: FontWeight.bold),) ,
            ),
            SizedBox(height: 50,),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: RaisedButton(
                  color: Colors.blue,
                  onPressed: (){
                    Share.share('Arthur has invited you to join Senty. Download '
                        'the Senty App through https//www.cbaloop.com/web/ Please use this code Share-0001 to complete your registration');
                  },
                  child: Container(
                      width: double.infinity,
                      child: Text('SHARE',style: TextStyle(color: Colors.white),textAlign: TextAlign.center,)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
