import 'package:flutter/material.dart';


class RetailWidget extends StatelessWidget {

  String buttonText;
  Color buttonColor;
  Function buttonOnpressed;

  RetailWidget({@required this.buttonText, this.buttonColor, this.buttonOnpressed});

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
                child: Icon(Icons.shop, color: Colors.blueAccent,size: 40,)//Image.asset('images/dealFive.jpeg', fit: BoxFit.fill, )
            ),
            SizedBox(height: 10,),
            Container(
              alignment: Alignment.center,
              child: Text('Retail',style: TextStyle(color: Colors.black, fontSize: 12)),
            )
          ],
        ),
      ),
    );
  }
}
