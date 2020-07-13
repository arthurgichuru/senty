import 'package:flutter/material.dart';


class TellFriendWidget extends StatelessWidget {

  String buttonText;
  Color buttonColor;
  Function buttonOnpressed;

  TellFriendWidget({@required this.buttonText, this.buttonColor, this.buttonOnpressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:   FlatButton(
        onPressed: buttonOnpressed,
        child: Column(
          children: <Widget>[
            Container(
                height: 40,
                width: 40,
                child: Image.asset('images/transfer.png', color:Colors.green,fit: BoxFit.fill, )
            ),
            SizedBox(height: 10,),
            Container(
              alignment: Alignment.center,
              child: Text('Invite friends',style: TextStyle(color: Colors.black, fontSize: 12)),
            )
          ],
        ),
      ),
    );
  }
}
