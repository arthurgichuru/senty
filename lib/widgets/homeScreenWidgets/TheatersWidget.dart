import 'package:flutter/material.dart';


class TheatersWidget extends StatelessWidget {

  String buttonText;
  Color buttonColor;
  Function buttonOnpressed;

  TheatersWidget({@required this.buttonText, this.buttonColor, this.buttonOnpressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        //onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>TellFriend()));},
        child: Column(
          children: <Widget>[
            Container(
                height: 40,
                width: 40,
                child: Image.asset('images/theater.png',color: Colors.black,fit: BoxFit.fill, )
            ),
            SizedBox(height: 10,),
            Container(
                alignment: Alignment.center,
                child: Text('Theaters',style: TextStyle(color: Colors.black, fontSize: 12))
            )
          ],
        ),
      ),
    );
  }
}
