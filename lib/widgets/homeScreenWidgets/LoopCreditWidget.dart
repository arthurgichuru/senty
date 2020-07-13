import 'package:flutter/material.dart';


class LoopCreditWidget extends StatelessWidget {

  String buttonText;
  Color buttonColor;
  Function buttonOnpressed;

  LoopCreditWidget({@required this.buttonText, this.buttonColor, this.buttonOnpressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:
      FlatButton(
         onPressed: buttonOnpressed,
        child: Column(
          children: <Widget>[
            Container(
                height: 40,
                width: 40,
                child: Image.asset('images/sentiCredit.png',fit: BoxFit.fill, )
            ),
            SizedBox(height: 10,),
            Container(
                alignment: Alignment.center,
                child: Text('Insurance',style: TextStyle(color: Colors.black, fontSize: 12))
            )
          ],
        ),
      ),
    );
  }
}
