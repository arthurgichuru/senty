import 'package:flutter/material.dart';


class CableTvWidget extends StatelessWidget {

  String buttonText;
  Color buttonColor;
  Function buttonOnpressed;

  CableTvWidget({@required this.buttonText, this.buttonColor, this.buttonOnpressed});

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
                child: Image.asset('images/cableTv.png',color:Colors.brown,fit: BoxFit.fill, )
            ),
            SizedBox(height: 10,),
            Container(
                alignment: Alignment.center,
                child: Text('CableTv',style: TextStyle(color: Colors.black, fontSize: 12))
            )
          ],
        ),
      ),
    );
  }
}
