import 'package:flutter/material.dart';


class WaterWidget extends StatelessWidget {

  String buttonText;
  Color buttonColor;
  Function buttonOnpressed;

  WaterWidget({@required this.buttonText, this.buttonColor, this.buttonOnpressed});

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
                child: Image.asset('images/water.png',color:Colors.blue,fit: BoxFit.fill, )
            ),
            SizedBox(height: 10,),
            Container(
                alignment: Alignment.center,
                child: Text('Water',style: TextStyle(color: Colors.black, fontSize: 12))
            )
          ],
        ),
      ),
    );
  }
}
