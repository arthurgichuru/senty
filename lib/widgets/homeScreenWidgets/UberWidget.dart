import 'package:flutter/material.dart';


class UberWidget extends StatelessWidget {

  String buttonText;
  Color buttonColor;
  Function buttonOnpressed;

  UberWidget({@required this.buttonText, this.buttonColor, this.buttonOnpressed});

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
                child: Image.asset('images/uber.png',fit: BoxFit.fill, )
            ),
            SizedBox(height: 10,),
            Container(
                child: Text('Uber',style: TextStyle(color: Colors.black, fontSize: 12), textAlign: TextAlign.center,)
            )
          ],
        ),
      ),
    );
  }
}
