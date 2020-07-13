import 'package:flutter/material.dart';


class MoreWidget extends StatelessWidget {

  String buttonText;
  Color buttonColor;
  Function buttonOnpressed;

  MoreWidget({@required this.buttonText, this.buttonColor, this.buttonOnpressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        onPressed: buttonOnpressed,
        child: Column(
          children: <Widget>[
            Container(
                height: 40,
                width: 40,
                child: Image.asset('images/moreminiapp.png',fit: BoxFit.fill, )
            ),
            SizedBox(height: 10,),
            Container(
                child: Text('More',style: TextStyle(color: Colors.black, fontSize: 12), textAlign: TextAlign.center,)
            )
          ],
        ),
      ),

    );
  }
}
