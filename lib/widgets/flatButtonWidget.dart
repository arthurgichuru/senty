import 'package:flutter/material.dart';

class FlatButtonWidget extends StatelessWidget {

  String buttonText;
  Color buttonColor;
  Function buttonOnpressed;

  FlatButtonWidget({@required this.buttonText, this.buttonColor, this.buttonOnpressed});


  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
          color: buttonColor,
          onPressed: buttonOnpressed,
          child: Text(buttonText, style: TextStyle(color: Color(0xffc43c00),fontSize: 16),),),
    );
  }
}
