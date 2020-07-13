import 'package:flutter/material.dart';


class RaisedButtonWidget extends StatelessWidget {

  String buttonText;
  Color buttonColor;
  Function buttonOnpressed;

  RaisedButtonWidget({@required this.buttonText, this.buttonColor, this.buttonOnpressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        /*shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(color: Colors.blueAccent)
        ),*/
        onPressed: buttonOnpressed,
        color: buttonColor,
        elevation: 10,
        child: Text(buttonText, style: TextStyle(color: Colors.white,fontSize: 16),),
      ),
    );
  }
}
