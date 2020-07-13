import 'package:flutter/material.dart';


class UtilitiesWidget extends StatelessWidget {

  String buttonText;
  Color buttonColor;
  Function buttonOnpressed;

  UtilitiesWidget({@required this.buttonText, this.buttonColor, this.buttonOnpressed});

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
                child: Image.asset('images/utilities.png',fit: BoxFit.fill, )
            ),
            SizedBox(height: 10,),
            Container(
              alignment: Alignment.center,
              child: Text('Utilities',style: TextStyle(color: Colors.black, fontSize: 12)),
            )
          ],
        ),
      ),
    );
  }
}
